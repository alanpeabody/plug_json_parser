defmodule PlugJsonParser.Mixfile do
  use Mix.Project

  def project do
    [app: :plug_json_parser,
     version: "0.0.2",
     elixir: "~> 1.0.0",
     description: description,
     package: package,
     deps: deps]
  end

  def application do
    [applications: []]
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
    [{:cowboy, "~> 1.0.0"},
     {:plug,   "~> 0.7.0"},
     {:jazz,   "~> 0.2.1"}]
  end
end
