Code.require_file("../../module_paths.exs")

defmodule ColorGen.MixProject do
  use Mix.Project

  def project do
    [
      app: :color_gen,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {ColorGen, []}
    ]
  end

  defp deps do
    [
      {:game_config, path: ModulePaths.config}
    ]
  end
end
