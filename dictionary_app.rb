# # Practice Exercise 2:

# Wordnik Dictionary API App:

# my api key to use for this exercise : 9f63510ab680a9a2504370c0a530c846ba454b12337f0c6c0

# NEVER COMMIT TO GIT WITH API KEY INCLUDED #

# # below is not dynamic - it only works with the word flamingo # #

# require "http"

# p "Enter a word to find the defintion:"
# word = gets.chomp

# response = HTTP.get("https://api.wordnik.com/v4/word.json/flamingo/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=9f63510ab680a9a2504370c0a530c846ba454b12337f0c6c0")
# word_def = response.parse(:json)

# # provide definitions for words upon user lookup

# definition = word_def[2]["text"]
# # p word_def[1]["text"]
# word_type = word_def[2]["partOfSpeech"]

# p "The definition of #{word} is: #{definition}"
# p "In case you didn't know, the word, #{word} is a #{word_type}."

# # The below is the dynamic version of this, where user can input any word # #

require "http"

p "Enter a word to find the defintion:"
word = gets.chomp

response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=9f63510ab680a9a2504370c0a530c846ba454b12337f0c6c0")
word_def = response.parse(:json)

# provide definitions for words upon user lookup

definition = word_def[1]["text"]
word_type = word_def[1]["partOfSpeech"]

p "#{definition}"

# word_def.each do |definition|
#   p "#{definition}"
# end

# p "The definition of #{word} is: #{definition}"
# p "In case you didn't know, the word, #{word} is a #{word_type}."

# ### loop version of above code to provide multiple defintions are the word:

# ### to get the keys in a hash, use .keys
