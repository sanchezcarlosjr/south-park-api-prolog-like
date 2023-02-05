const path = require("path");
const database_manager = require("./src/database_manager");

const fastify = require("fastify")({
  logger: false,
});

const database = new database_manager.Database();
database.start();

fastify.get("/api", (request, reply) =>
  request.query.q ? database.consult(request.query.q) : []
);

fastify.listen(
  { port: process.env.PORT, host: "0.0.0.0" },
  function (err, address) {
    if (err) {
      console.error(err);
      process.exit(1);
    }
    console.log(`Your app is listening on ${address}`);
  }
);
