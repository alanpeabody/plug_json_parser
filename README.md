JsonParser
==========

Nothing more than this.

```elixir
Plug.Parsers, parsers: [JsonParser]
```

* uses Jazz json parser
* raises `BadRequestError` if trying to parse invalid json
