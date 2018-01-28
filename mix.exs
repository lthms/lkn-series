
defmodule Lkn.Series.MixProject do
  use Mix.Project

  def project do
    [ app:              :lkn_series,
      version:          "0.1.0",
      elixir:           "~> 1.6",
      start_permanent:  Mix.env == :prod,
      deps:             deps(),
    ]
  end

  def application do
    [
      extra_applications: [
        :logger,
        :lkn_core,
      ],
    ]
  end

  defp deps do
    [
      {:lkn_core, "~> 0.4.1"}
      {:lkn_prelude, "~> 0.1.2"},
      {:uuid, "~> 1.1"},
    ]
  end
end
