defmodule Fireworks.Mixfile do
  use Mix.Project

  def project do
    [app: :fireworks,
     version: "0.0.1",
     elixir: "~> 1.0",
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:amqp, :logger], mod: {Fireworks, []}]
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
      {:amqp, github: "pma/amqp"},
      {:poolboy, "~> 1.5.0"}
    ]
  end
end
