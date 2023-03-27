# ### API practice (outside of class)

# ## practice 1 - random joke of the day ##

# require "http"

# response = HTTP.get("https://official-joke-api.appspot.com/random_joke")

# joke = response.parse(:json)

# joke_setup = joke["setup"]
# joke_punchline = joke["punchline"]

# # # provide user random joke of the day

# puts "Want to hear the joke of the day?"
# user_input = gets.chomp
# puts ""

# if user_input == "yes"
#   puts "#{joke_setup}"
#   puts ""
#   puts "#{joke_punchline}"
# elsif user_input == "no"
#   puts "Come on, you're no fun!"
# end

# ## practice 2 - get info about specified Zip code ##

# require "http"

# response = HTTP.get("https://api.zippopotam.us/us/33434")
# zip_data = response.parse(:json)

# # show all info for specfic zip code

# puts "enter a zip code to learn more about that area"
# zip_input = gets.chomp.to_i
# puts ""

# puts "#{zip_data}"

# ## practice 3 -  ##
