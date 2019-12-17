require_relative './listings.rb'
require_relative './guests.rb'
require_relative './trips.rb'
require 'pry'

listing1 = Listings.new("Washington DC")
listing2 = Listings.new("New York City")
guest1 = Guests.new("Mansour")
guest2 = Guests.new("John-Louis")
trip1 = Trips.new(guest1, listing1)
trip2 = Trips.new(guest2, listing1)
trip3 = Trips.new(guest1, listing2)
trip4 = Trips.new(guest2, listing2)

puts "tests below: "
puts listing1.trips 


binding.pry 