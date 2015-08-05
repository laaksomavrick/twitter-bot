require 'rubygems'
require 'twitter'

client = Twitter::REST::Client.new do |config|
	config.consumer_key = "8tf2QybvvnLWGL3u2AjdCFymE"
	config.consumer_secret = "v8NSQanbSqdwQcwRYCdo3ANEtpH63suoTM6eH1GY0MSTyFmtFa"
	config.access_token = "3404803155-i9XwIvE3hkxsmjetwgPAJybGRcGqTaNIJsqTUrr"
	config.access_token_secret = "bEGOObokAcB19uafDEKNyCaE4OvN4s58YQ6YJ3EfQIjJS"
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


