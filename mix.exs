defmodule ExPropisju.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ex_propisju,
      version: "0.1.5",
      elixir: "~> 1.4",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  defp description do
    """
    Copypast gem ru_propisju to elixir
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md"],
      maintainers: ["Sergey Chechaev"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/sergey-chechaev/ex_propisju",
        "Docs" => "https://github.com/sergey-chechaev/ex_propisju"
      }
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:ex_doc, "~> 0.14", only: :dev},
      {:earmark, "~> 1.1", only: :dev},
      {:credo, "~> 0.6.1", only: [:dev, :test], runtime: false}
    ]
  end
end
