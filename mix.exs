defmodule PlugJsonParser.Mixfile do
  use Mix.Project

  def project do
    [app: :plug_json_parser,
     version: "0.0.3",
     elixir: "~> 0.14.3",
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
    [{:cowboy, github: "extend/cowboy"},
     {:plug, "~> 0.5.1"},
     {:jazz, "~> 0.1.2"}]
  end
end
