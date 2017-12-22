defmodule FirstElixirProject.Mixfile do
  use Mix.Project

  def project do
    [
      app: :first_elixir_project,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 0.10.0"}, {:poison, "~> 3.0"}
    ]
  end
end
