require 'httparty'

# Using Googles Geocoding API web service
# https://maps.googleapis.com/maps/api/geocode/json?address=Great Pyramid of Giza&key=AIzaSyBP30mYnbwKpZ0lCHtp6FuvcNSjNG0GsGM

#Starter Code:
seven_wonders = ["Great Pyramid of Giza", "Hanging Gardens of Babylon", "Colossus of Rhodes", "Pharos of Alexandria", "Statue of Zeus at Olympia", "Temple of Artemis", "Mausoleum at Halicarnassus"]

puts "Welcome to Seven Wonders of the World"

wonder = seven_wonders[0]
google_api_key = "AIzaSyBP30mYnbwKpZ0lCHtp6FuvcNSjNG0GsGM"
geocode_url = "https://maps.googleapis.com/maps/api/geocode/json?address=#{wonder}&key=#{google_api_key}"
encoded_url = URI.encode(geocode_url)

response = HTTParty.get(encoded_url)

if response.code == 200
  puts "Your info for #{wonder}: #{response['results']}"
else
  puts "This didn't work"
end







#Example Output:
#{"Great Pyramind of Giza"=>{"lat"=>29.9792345, "lng"=>31.1342019}, "Hanging Gardens of Babylon"=>{"lat"=>32.5422374, "lng"=>44.42103609999999}, "Colossus of Rhodes"=>{"lat"=>36.45106560000001, "lng"=>28.2258333}, "Pharos of Alexandria"=>{"lat"=>38.7904054, "lng"=>-77.040581}, "Statue of Zeus at Olympia"=>{"lat"=>37.6379375, "lng"=>21.6302601}, "Temple of Artemis"=>{"lat"=>37.9498715, "lng"=>27.3633807}, "Mausoleum at Halicarnassus"=>{"lat"=>37.038132, "lng"=>27.4243849}}
