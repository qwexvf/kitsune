defmodule Kitsune.Mixfile do
  use Mix.Project

  def project do
    [app: :kitsune,
      version: "0.5.3",
      description: "Kitsune is an Elixir library for transforming the representation of data inspired by Representable.",
      package: package(),
      elixir: "~> 1.7",
      deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:jason, "~> 1.1"},
      {:ex_doc, "~> 0.19", only: :dev, runtime: false},
    ]
  end

  defp package do
    [
      contributors: ["Eric West"],
      licenses: ["MIT"],
      links: %{github: "https://github.com/edubkendo/kitsune",
        docs: "http://hexdocs.pm/kitsune"}
    ]
  end
end
