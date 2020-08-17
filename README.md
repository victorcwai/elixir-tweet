# ElixirTweet

Trying Elixir.
Automatically tweet random lines from a file.
From "Getting Started with Elixir" course.

## Operation

Download dependency:
- mix deps.get

Run app:
- mix run

Run test with tag:
- mix test --only watching

Run test continously:
- mix test.watch

Interactive shell:
- iex -S mix

Env variable:
- elixir_tweet_twitter_consumer_key
- elixir_tweet_twitter_consumer_secret
- elixir_tweet_twitter_access_token
- elixir_tweet_twitter_access_secret

# Notes

Elixir is/has:
- immutable data
- functional (e.g. guard clauses and recursion to replace for-loop)
- HA
- concurrency
- pattern matching
- meta programming, macro

Special stuff in Elixir:

- need to care about stack overflow
- Tail recursion (optimize if the function's last operation is the - function itself)
- use Supervisor to keep elixir app fault-tolerant, it restarts - service if it crashes
- Umbrella groups multiple apps together
- elixir Behavior ~= OOP interface
- DocTest: document can act as tests (will actually run if you execute ``mix test``)

