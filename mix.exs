defmodule SecureCompare.Mixfile do
  use Mix.Project

  def project do
    [
      app: :secure_compare,
      version: "0.0.1",
      elixir: "~> 1.2",
      name: "secure_compare",
      source_url: "git@github.com:plackemacher/secure_compare.git",
      homepage_url: "https://github.com/plackemacher/secure_compare",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: "A simple constant-time comparison algorithm for Elixir",
      package: package,
      deps: deps
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
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
  # Type "mix help deps" for more examples and options
  defp deps do
    []
  end

  defp package do
    [
      maintainers: ["Pat Lackemacher"],
      licenses: ["MIT"],
      links: %{github: "https://github.com/plackemacher/secure_compare"}
    ]
  end
end
