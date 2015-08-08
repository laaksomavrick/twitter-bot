require 'rubygems'
require 'twitter'

client = Twitter::REST::Client.new do |config|
	config.consumer_key = "8tf2QybvvnLWGL3u2AjdCFymE"
	config.consumer_secret = "v8NSQanbSqdwQcwRYCdo3ANEtpH63suoTM6eH1GY0MSTyFmtFa"
	config.access_token = "3404803155-i9XwIvE3hkxsmjetwgPAJybGRcGqTaNIJsqTUrr"
	config.access_token_secret = "bEGOObokAcB19uafDEKNyCaE4OvN4s58YQ6YJ3EfQIjJS"
end
file = File.open("ij2.txt")
contents = file.read
contents = contents.split.join(' ')
tweets = contents.scan(/.{137}/)

#this is not ideal code in itself, but necessary given Heroku's sleep mode for
#free apps. database.txt acts as a database for saving the progress of iteration
#whether or not the app sleeps (thus losing progress, as in the previous iteration)
#of this script
for i in 0..tweets.length
  iterator = File.read('database.txt').to_i
  client.update(tweets[i])
  i += 1
  File.write('database.txt', i)	
end

client.update("as raining out of a low sky, and the tide was way out.")


