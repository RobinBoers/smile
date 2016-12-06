# Smile

Small lib for converting emoji mappers to emoji characters, like in Slack messages:

```elixir
import Smile
convert_text("my emoji game is :ok_hand_sign:")
# > "my emoji game is 👌"
```

This is just an experiment to examine metaprogramming in Elixir, there's known limitations:
    
	1. Emojis in the middle of other don't work, ex.: ":woo:pile_of_poo:hoo:" would not work

Ideas, suggestions, contributions welcome, just drop me a line at [hello@danielgulyas.me](hello@danielgulyas.me)

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `smile` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:smile, "~> 0.1.0"}]
    end
    ```

  2. Ensure `smile` is started before your application:

    ```elixir
    def application do
      [applications: [:smile]]
    end
    ```

