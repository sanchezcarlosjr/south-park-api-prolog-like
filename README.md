# South Park API

Because terminal is not enough, you can watch the Prolog power with an API REST.
This is a proof-of-concept, don't use in prodution.

# Some requests

Are 'Stan Marsh' and 'Kyle Broflovski' friends?"

```
/api?q=friend("Stan Marsh", "Kyle Broflovski").
```

```json
[true]
```

Who are the parents of "Stan Marsh"s' friends?

```
/api?q=friend("Stan Marsh", Friend),parent(Parent,Friend).
```

```json
[
  { "Friend": "Kyle Broflovski", "Parent": "Sheila Broflovski" },
  { "Friend": "Eric Cartman", "Parent": "Liane Cartman" }
]
```

Is "Stan Marsh" a character?

```
character("Stan Marsh", sex(male), age(10), country("🇺🇸"), grade(4)).
```

```json
[true]
```
