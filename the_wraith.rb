require 'rubygems'
require 'twitter'

client = Twitter::REST::Client.new do |config|
	config.consumer_key = ""
	config.consumer_secret = ""
	config.access_token = ""
	config.access_token_secret = ""
end

#get the array of twitter ready
file = File.open("ij2.txt")
contents = file.read
contents = contents.split.join(' ')
tweets = contents.scan(/\s.{137}\s/).map(&:strip)

tweets.length.times do
	client.update(tweets.sample + "...")
	sleep 14400
end



