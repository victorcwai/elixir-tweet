defmodule ElixirTweet.FileReader do
  @doc """
  This function will take the path to a file and find a string that can be tweeted out.

  It will trim all the strings, and then eliminate any strings that are larger than 140 characters.

  iex> ElixirTweet.FileReader.get_strings_to_tweet("priv/for_test.txt")
  "short line"
  """
  def get_strings_to_tweet(filename) do
      File.read!(filename)
      |> pick_string
  end

  def pick_string(str) do
      str
      |> String.split("\n")
      |> Enum.map(&String.trim/1)
      |> Enum.filter(&String.length(&1) <= 140)
      |> Enum.random()
  end
end