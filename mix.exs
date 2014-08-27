defmodule PlugJsonParser.Mixfile do
  use Mix.Project

  def project do
    [app: :plug_json_parser,
     version: "0.0.5",
     elixir: "~> 0.15.1",
     description: description,
     package: package,
     deps: deps]
  end

  def application do
    [applications: [:cowboy, :plug, :poison]]
  end

  defp description do
    """
    JSON parse for Plug.Parsers
    """
  end

  defp package do
    [contributors: ["Kurt Williams"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/onkel-dirtus/plug_json_parser"}]
  end

  defp deps() do
    [{:cowboy, hex_app: :cowboy},
     {:plug, "~> 0.5.3"},
     {:poison, "~> 1.0.2"}]
  end
end
