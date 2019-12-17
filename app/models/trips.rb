class Trips 

    attr_reader :guest, :listing
    @@all = []

    def initialize(guest, listing)

        @guest, @listing = guest, listing 
        @@all << self 
    end 

    def self.all 

        return @@all
    end 

end 