class Trips 

    attr_accessor :guest, :listing
    @@all = []

    def initialize(guest, listing)

        @guest, @listing = guest, listing 
        @@all << self 
    end 

    def self.all 

        return @@all
    end 

end 