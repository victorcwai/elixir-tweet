use Mix.Config

# cronjob config for our Scheduler
config :elixir_tweet, ElixirTweet.Scheduler, jobs: [
    {"* * * *", fn -> 
        ElixirTweet.FileReader.get_strings_to_tweet(
            # find the sample.txt in elixir_tweet's priv dir
            Path.join("#{:code.priv_dir(:elixir_tweet)}", "sample.txt")
        )
        |> ElixirTweet.TweetServer.tweet # tweet the content of the file
    end}
]