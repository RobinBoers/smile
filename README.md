# Smile

Small library for converting emoji shortnames to emoji characters, like in Discord messages:

```elixir
Smile.convert_text("LMAO :joy:")
# > "LMAO 😂"
```

This is a fork of the [original project](https://github.com/goulashify/smile) that uses Discord-style shortcodes instead of the full unicode "CLDR Short Name".  
For example, `:face_with_tears_of_joy:` is the official unicode-approved short name, but this fork uses `:joy:` instead.

There are some known issues:

1. Emojis in the middle of other don't work, ex. `:woo:poop:hoo:` would not convert the `:poop:` in the middle.

## Installation

Available via GitHub, the package can be installed as:

1. Add `:smile` to your list of dependencies in `mix.exs`:

   ```elixir
    def deps do
      [
        {:smile, github: "RobinBoers/smile"}
      ]
    end
   ```

2. Ensure `smile` is started before your application:

   ```elixir
    def application do
      [applications: [:smile]]
    end
   ```
