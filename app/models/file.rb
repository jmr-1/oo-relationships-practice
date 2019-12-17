# create files for your ruby classes in this directory
#will use this to run 

require_relative './bakery.rb'
require_relative './desserts.rb'
require_relative './ingredients.rb'
require 'pry'


bake1 = Bakery.new("Honeybun")
bake2 = Bakery.new("Anne's")

donut = Desserts.new("donut")

sugar = Ingredients.new("sugar", 70)
brown_sugar = Ingredients.new("brown sugar", 50)
sugar.dessert = donut 
brown_sugar.dessert = donut 
donut.bakery = bake1 
bread = Desserts.new("bread", bake1)
spice= Ingredients.new("spice", 30, bread)
nice = Ingredients.new("everything nice", 50, bread)



puts "tests begin"
puts bake1.name == "Honeybun"

puts "ingredients tests"
puts Ingredients.find_all_by_name("sugar")
puts "Number of calories in a #{donut.name} is #{donut.calories}"
puts "Average calories in #{bake1.name} is #{bake1.average_calories}"

binding.pry 
