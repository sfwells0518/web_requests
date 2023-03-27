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

# response = HTTP.get("https://api.zippopotam.us/us/78749")
# zip_data = response.parse(:json)

# # show all info for specfic zip code

# puts "enter a zip code to learn more about that area"
# zip_input = gets.chomp.to_i
# puts ""

# puts "#{zip_data}"

# ## practice 3 - Weather App ##

require "http"

response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=chicago&appid=&units=imperial")

weather_data = response.parse(:json)

# temp
temperature = weather_data["main"]["temp"]

# weather description
weather_description = weather_data["weather"][0]["description"]

# city name
city_name = weather_data["name"]

# make it user friendly
# ex: "It is currently 80 degrees and cloudy in austin"

p "It is currently #{temperature} degrees and #{weather_description} in #{city_name}."

# p temperature
# p weather_description
# p city_name
