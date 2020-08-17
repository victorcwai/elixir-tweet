defmodule ElixirTweetTest do
  use ExUnit.Case
  doctest ElixirTweet

  test "greets the world" do
    assert ElixirTweet.hello() == :world
  end

  # test tag
  # @tag watching: true
  test "the truth" do
    assert 1+1 == 2
  end
end
