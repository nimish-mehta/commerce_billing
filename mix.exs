defmodule Commerce.Billing.Mixfile do
  use Mix.Project

  def project do
    [app: :commerce_billing,
     version: "0.0.2",
     description: "Credit card processing library",
     package: [
       contributors: ["Joshua Nussbaum"],
       licenses: ["MIT"],
       links: %{github: "https://github.com/joshnuss/commerce_billing"}
     ],
     elixir: ">= 1.0.0",
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:httpoison, :hackney],
     mod: {Commerce.Billing, []}]
  end

  # Dependencies can be hex.pm packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [{:poison, "~> 1.5.1"},
     {:httpoison, ">= 0.7.1"},
     {:ex_doc, ">= 0.6.0"},
     {:mock, ">= 0.1.0"}]
  end
end
