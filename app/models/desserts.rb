class Desserts 

    attr_accessor :name, :bakery 

    @@all = []

    def initialize(name, bakery = nil )

        @name = name 
        @bakery = bakery
        @@all << self 
    end 

    def self.all
        return @@all
    end 

    def ingredients

        return Ingredients.all.select{|ingredient|ingredient.dessert == self}
    end 

    def calories

        calories_count = 0 
         self.ingredients.each do |ingredient|
            calories_count += ingredient.calories
         end 
         return calories_count
    end 

end 