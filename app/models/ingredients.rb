class Ingredients 

    attr_accessor :name, :dessert, :calories
    @@all =[]
    
    #do we initialize with a dessert attribute or will it be made from desserts method?
    def initialize(name, calories=0, dessert=nil )

        @name = name 
        @calories = calories 
        @dessert = dessert 
        @@all << self 
    end 

    def self.all

        return @@all 
    end

    def bakery 

        self.desserts.bakery 
    end 

    def self.find_all_by_name(ingredient)

        #note: do not just look for exact matches!!

        self.all.select{|list| list.name.include? (ingredient) }
    end 

end 