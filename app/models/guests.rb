class Guests 

    attr_accessor :name, :trip 
    @@all = []

    def initialize(name, trip)

        @name, @trip = name, trip 
        @@all << self 
    end 
    
end 