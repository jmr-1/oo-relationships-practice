class Guests 

    attr_accessor :name
    @@all = []

    def initialize(name)

        @name = name 
        @@all << self 
    end 
    
    def self.all

        return @@all
    end 

    def trips #returns array of all listings a guest has stayed at 

        return Trips.all.select {|trip|trip.guest == self }
    end 

    def listings

        #takes object.trips array and only lists the listings
        return self.trips.map {|trip| trip.listing }
    end 

    def trip_count #returns number of trips a guest has taken 

        return self.trips.count 
    end 

    def self.find_all_by_name(name)

        return Guests.all.select {|guest| guest.name == name }
    end 

    def self.pro_traveller 

        Guests.all.select {|guest| guest.trip_count > 1 }
    end 


end 