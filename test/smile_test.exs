defmodule SmileTest do
  use ExUnit.Case
  import Smile

  doctest Smile

  describe "convert_name_to_emoji()" do
    test "should convert single emoticons correctly",
      do: assert(convert_name_to_emoji("poop") == "💩")

    test "should return the given text when not found",
      do: assert(convert_name_to_emoji("not_yet_existent_emoji") == "not_yet_existent_emoji")
  end

  describe "convert_mapping_to_emoji" do
    test "should return emoji when called correctly",
      do: assert(convert_mapping_to_emoji(":joy:") == "😂")

    test "should return original text when emoji not found",
      do:
        assert(convert_mapping_to_emoji(":not_yet_existent_emoji:") == ":not_yet_existent_emoji:")
  end

  test "converts text fine" do
    assert convert_text("tech debt is :poop:") == "tech debt is 💩"

    # Not working yet, see README.
    # assert convert_text(":woo:poop:hoo: and it's done!") == ":woo💩hoo: and it's done!"
  end
end
