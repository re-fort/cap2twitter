require 'rubygems'
require 'bundler'
require 'open-uri'

Bundler.require
Dotenv.load

CONSUMER_KEY     = ENV['CONSUMER_KEY']
CONSUMER_SECRET  = ENV['CONSUMER_SECRET']
ACCESS_TOKEN_KEY = ENV['ACCESS_TOKEN_KEY']
ACCESS_SECRET    = ENV['ACCESS_SECRET']

begin
  twitter_client = Twitter::REST::Client.new do |config|
    config.consumer_key       = CONSUMER_KEY
    config.consumer_secret    = CONSUMER_SECRET
    config.access_token        = ACCESS_TOKEN_KEY
    config.access_token_secret = ACCESS_SECRET
  end

  tweet_content = ARGV[0]
  file_path = ARGV[1]
  twitter_client.update_with_media(tweet_content, open(file_path))
rescue => e
  STDERR.puts "error => " + e.to_s
end