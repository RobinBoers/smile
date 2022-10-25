defmodule Smile.MixProject do
  use Mix.Project

  def project do
    [
      app: :smile,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: [],
      description: description(),
      package: package()
    ]
  end

  defp description do
    """
      Small lib for converting emoji mappers to emoji characters, like in Slack messages, see GitHub for description please.
    """
  end

  defp package do
    [
      name: :smile,
      files: ["lib", "mix.exs", "README*"],
      maintainers: ["Daniel Gulyas"],
      licenses: ["WTFPL"],
      links: %{"GitHub" => "https://github.com/danigulyas/smile"}
    ]
  end
end
