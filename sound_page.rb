require 'io/console'

require 'rubygems'
require 'bundler/setup'

require 'soundcloud'
require 'pry'


puts "SoundCloud Login:"
username = gets

puts "password:"
password = STDIN.noecho(&:gets).chomp


client = SoundCloud.new({
  :client_id     => ENV['SOUNDCLOUD_CLIENT_ID'],
  :client_secret => ENV['SOUNDCLOUD_CLIENT_SECRET'],
  :username      => username,
  :password      => password
})

# print logged in username
me = client.get('/me')

favorites = []

# /users/#{me.id}/favorites also works
results = client.get("/me/favorites", linked_partitioning: 1, limit: 200)

next_href_cursor = results.next_href
favorites.concat results.collection

while next_href_cursor do
  puts "Getting: #{next_href_cursor}"
  results = client.get next_href_cursor
  favorites.concat results.collection
  next_href_cursor = results.next_href
end

File.open "favorites.json", "w" do |file|
  file.write favorites.to_json
end

#binding.pry
