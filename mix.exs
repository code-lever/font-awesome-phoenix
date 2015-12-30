defmodule FontAwesomePhoenix.Mixfile do
  use Mix.Project

  def project do
    [app: :font_awesome_phoenix,
     version: "0.1.2",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:dogma, "~> 0.0", only: :dev},
      {:earmark, only: :dev},
      {:ex_doc, "~> 0.10", only: :dev},
      {:phoenix_html, "~> 2.0"},
    ]
  end

  defp description do
    """
    HTML helper functions to build Font Awesome icon tags.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Nick Veys", "Gabe Cook"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/code-lever/font-awesome-phoenix",
      }
    ]
  end
end
