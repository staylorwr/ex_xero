defmodule ExXero.Mixfile do
  use Mix.Project

  def project do
    [app: :ex_xero,
     version: "0.1.0",
     elixir: "~> 1.3",
     name: "ExXero",
     description: "Xero Client",
     source_url: "https://github.com/staylorwr/ex_xero",
     package: package,
     deps: deps()]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    deps(:test_dev)
  end

  defp deps(:test_dev) do
    [
      {:dialyze, "~> 0.2.1"},
      {:ex_doc, "~> 0.13.0"}
    ]
  end

  defp package do
    [description: "Xero Client",
     files: ["lib", "config", "mix.exs", "README*"],
     maintainers: ["Scott Taylor"],
     licenses: ["MIT"],
     links: %{github: "https://github.com/staylorwr/ex_xero"}]
  end
end
