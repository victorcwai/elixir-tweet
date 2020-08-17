defmodule FileReaderTest do  
  use ExUnit.Case
  import ElixirTweet.FileReader
  import Mock

  doctest ElixirTweet.FileReader
  
  test "Passing a file should return a string" do
    str = get_strings_to_tweet(Path.join("#{:code.priv_dir(:elixir_tweet)}", "for_test.txt"))
    
    assert str != nil
  end

  test "Will not return string longer than 140 characters" do
    str = get_strings_to_tweet(Path.join("#{:code.priv_dir(:elixir_tweet)}", "for_test.txt"))
    
    assert str == "short line"
  end
  
  test "Empty string should return an empty string" do
    str = pick_string("")
    
    assert str == ""
  end
  
  # tag lets you select tests to be run 
  @tag watching: true
  test "The string should be trimmed" do
    with_mock File, [read!: fn(_) -> " ABC " end] do
      str = get_strings_to_tweet("does not exist.txt")

      assert str == "ABC"
    end
  end
end
