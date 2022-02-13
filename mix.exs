defmodule Homeassistant.MixProject do
  use Mix.Project

  def project do
    [
      app: :homeassistant,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {HomeAssistantEngine.Application, [Automations.SunLogger]}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:dotenvy, "~> 0.3.0"},
      {:home_assistant_engine, git: "https://github.com/kiskoza/home-assistant-engine.git"}
    ]
  end
end
