const Rx = require("rxjs");
const fs = require("fs");
const pl = require("tau-prolog");
require("tau-prolog/modules/promises.js")(pl);

class Database {
  constructor() {
    this.session = null;
  }
  async start() {
    const program = await fs.promises
      .readFile(`${__dirname}/database.pl`, {
        encoding: "utf8",
      })
      .then((x) => x.toString());
    this.session = pl.create();
    await this.session.promiseConsult(program);
    return this;
  }
  async consult(goal) {
    await this.session.promiseQuery(goal);
    return Rx.lastValueFrom(
      Rx.from(this.session.promiseAnswers()).pipe(
        Rx.map((answer) => this.session.format_answer(answer)),
        Rx.map((answer) =>
          answer == "true"
            ? true
            : Object.fromEntries(
                answer
                  .replace(
                    /[\[\(]([^,]+(,[^,]+)*)[\]\)]/g,
                    (match, p1) => "[" + p1.replace(/,/g, "") + "]"
                  )
                  .replace("]", "],")
                  .split(",")
                  .map((x) =>
                    x
                      .trim()
                      .replace(/[\[\]]/g, "")
                      .split(" = ")
                  )
              )
        ),
        Rx.scan((acc, curr) => [...acc, curr], [])
      ),
      { defaultValue: [] }
    );
  }
}

module.exports = { Database };
