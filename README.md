JsonParser
==========

Nothing more than this.

```elixir
Plug.Parsers, parsers: [PlugJsonParser]
```

* uses Poison json parser
* raises `BadRequestError` if trying to parse invalid json

Pass options to Posion as `plug_json_parser`.

```elixir
defmodule Person do
  defstruct [:name, :age]
end
Plug.Parsers, parsers: [PlugJsonParser], plug_json_parser: [as: Person]
```
