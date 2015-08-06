require 'rubygems'
require 'twitter'

client = Twitter::REST::Client.new do |config|
	config.consumer_key = ""
	config.consumer_secret = ""
	config.access_token = ""
	config.access_token_secret = ""
end

#client.update("test")

file = File.open("ij2.txt")
contents = file.read
contents = contents.split.join(' ')
tweets = contents.scan(/.{137}/)

tweets.each do |tweet|
  client.update(tweet + "...")
  sleep 3600
end

client.update("as raining out of a low sky, and the tide was way out.")


