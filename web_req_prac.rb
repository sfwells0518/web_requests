#### In-class Exercises: ####

# # web request in ruby:

# gem, library

# require "http"

# p "what are code would you like to search?"
# user_input = gets.chomp

# response = HTTP.get("https://data.ny.gov/resource/xjya-f8ng.json")
# markets = response.parse(:json)

# # show all the farmers markets near where i grew up
# count = 0
# close_to_cuse_markets = []
# markets.each do |market|
#   if market["phone"][0...3] == "315"
#     count += 1
#     close_to_cuse_markets << market
#     p "I AM NEAR SYRACUSE"
#   end
#   # p "*" * 10
# end

# p count
# pp close_to_cuse_markets

# ###################

# # Practice Exercise 1 (NEED TO FINISH THIS):

# web request in ruby:

# require "http"

# p "what food are you looking for?"
# user_input = gets.chomp

# response = HTTP.get("https://data.sfgov.org/resource/jjew-r69b.json")
# trucks = response.parse(:json)

# # show the SF food truck schedule for sandwiches

# count = 0
# trucks_with_burritos = []

# trucks.each do |truck|
#   if truck["optionaltext"][NEED TO FIND KEY VALUE TO ADD HERE] == "burritos"
#     count += 1
#     trucks_with_burritos << truck
#     p "these trucks have burritos!"
#   end
# end

# p count
# pp trucks
