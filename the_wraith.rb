require 'rubygems'
require 'twitter'

client = Twitter::REST::Client.new do |config|
	config.consumer_key = "8tf2QybvvnLWGL3u2AjdCFymE"
	config.consumer_secret = "v8NSQanbSqdwQcwRYCdo3ANEtpH63suoTM6eH1GY0MSTyFmtFa"
	config.access_token = "3404803155-i9XwIvE3hkxsmjetwgPAJybGRcGqTaNIJsqTUrr"
	config.access_token_secret = "bEGOObokAcB19uafDEKNyCaE4OvN4s58YQ6YJ3EfQIjJS"
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



