class Bakery 

    attr_reader :name 
    @@all = []

    def initialize(name)

        @name = name 
        @@all << self 
    end 

    def ingredients

        return self.desserts.map {|dessert| dessert.ingredients}
    end 

    def desserts #returns array of desserts the bakery makes 

        return Desserts.all.select{|dessert| dessert.bakery == self }
    end 

    def average_calories #returns average calories of all desserts made 

        total_calories = 0 
        self.desserts.each do |dessert|
            total_calories += dessert.calories 
        end 
        
        return average = (total_calories) / (self.desserts.length)
    end 

    def self.all 

        return @@all
    end 

    def shopping_list

        return self.ingredients.map {|ingredients| ingredients.name}
    end 

end 