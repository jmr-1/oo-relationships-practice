require_relative './listings.rb'
require_relative './guests.rb'
require_relative './trips.rb'
require 'pry'

listing1 = Listings.new("Washington DC")
listing2 = Listings.new("New York City")
listing3 = Listings.new("San Francisco")
guest1 = Guests.new("Mansour")
guest2 = Guests.new("John-Louis")
guest3 = Guests.new("Dean")
trip1 = Trips.new(guest1, listing1)
trip2 = Trips.new(guest2, listing1)
trip3 = Trips.new(guest1, listing2)
trip4 = Trips.new(guest2, listing2)
trip5 = Trips.new(guest1, listing3)
trip6 = Trips.new(guest3, listing2)

puts "tests below: "
puts listing1.trips 


binding.pry 