defmodule ElixirTweet.TweetServer do 
    use GenServer

    def start_link(_) do
        GenServer.start_link(__MODULE__, :ok, name: :tweet_server )
    end

    def init(:ok) do
        {:ok, %{}}
    end

    # async
    def handle_cast({:tweet, tweet}, _) do
        ElixirTweet.Tweet.send(tweet)
        {:noreply, %{}}
    end

    # public function that calls this GenServer.handle_cast
    def tweet(tweet) do
        GenServer.cast(:tweet_server, {:tweet, tweet})
    end
end