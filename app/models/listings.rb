class Listings

    attr_accessor :city

    @@all = []

    def initialize(city)

        @city = city 

        @@all << self 
    end 

    def self.all

        return @@all
    end 

    
end 