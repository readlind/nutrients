class DrinkTweeter

  def initialize
    @client = connect_to_service
  end

  def connect_to_service
    Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["CONSUMER_KEY"]
      config.consumer_secret     = ENV["CONSUMER_SECRET"]
      config.access_token        = ENV["YOUR_ACCESS_TOKEN"]
      config.access_token_secret = ENV["YOUR_ACCESS_SECRET"]
    end
  end


  def send_tweet(tweet)
    @client.update(tweet)
  end
end
