defmodule PlugJsonParserTest do
  use ExUnit.Case
  use Plug.Test

  @data %{"foo" => "foo", "bar" => "bar", "biz" => 1, "list" => [1,2,3]}
  @opts Plug.Parsers.init parsers: [PlugJsonParser]

  test "parsing" do
    conn = @data |> Jazz.encode! |> req
    assert @data == Plug.Parsers.call(conn, @opts).params
  end

  test "unprocessable entity" do
    assert_raise PlugJsonParser.BadRequestError, fn ->
      Plug.Parsers.call(req("data"), @opts)
    end

    assert_raise PlugJsonParser.BadRequestError, "Invalid JSON at \"b\"", fn ->
      Plug.Parsers.call(req("{\"foo\":b"), @opts)
    end
  end

  def req(json) do
    conn(:post, "/", json, headers: [{"content-type", "application/json"}])
  end
end
