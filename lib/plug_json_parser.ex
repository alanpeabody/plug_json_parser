defmodule PlugJsonParser do
  alias Plug.Conn

  defmodule BadRequestError do
    @moduledoc """
    Error raised when the request is not valid json
    """

    defexception [:message]

    defimpl Plug.Exception do
      def status(_exception), do: 400
    end
  end

  def parse(%Conn{} = conn, "application", "json", _headers, opts) do
    case Conn.read_body(conn, opts) do
      {:ok, body, conn} ->
        jazz_opts = opts[:jazz] || []
        case Jazz.decode(body, jazz_opts) do
          {:ok, decoded} ->
            {:ok, decoded, conn}
          {:error, :invalid} ->
            raise BadRequestError, message: "Invalid JSON"
          {:error, :invalid, frag} ->
            raise BadRequestError, message: "Invalid JSON at \"#{frag}\""
        end
      {:more, _data, conn} ->
        {:error, :too_large, conn}
    end
  end

  def parse(conn, _type, _subtype, _headers, _opts) do
    {:next, conn}
  end
end
