defmodule ObanRebootNotWorking.MixProject do
  use Mix.Project

  def project do
    [
      app: :oban_reboot_not_working,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {ObanRebootNotWorking.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:oban, "== 2.10.1"},
      {:ecto, "~> 3.0"},
      {:tzdata, "~> 1.1"},
      {:ecto_sql, "~> 3.0"}
    ]
  end
end
