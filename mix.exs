defmodule JsonParser.Mixfile do
  use Mix.Project

  def project do
    [app: :plug_json_parser,
     version: "0.0.1",
     elixir: "~> 0.14.3",
     deps: deps]
  end

  def application do
    [applications: []]
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
