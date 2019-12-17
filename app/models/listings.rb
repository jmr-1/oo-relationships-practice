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

    def trips #returns all trip objects with .listing attribute 

        return Trips.all.select {|trip| trip.listing == self }
    end 

    def guests


        #array only includes the guests and drops the listing portion 
        return self.trips.map {|listing| listing.guest }
    end 

    def trip_count

        #uses trips helper method and counts the number of objects 
        return self.trips.count 
    end 

    def self.find_all_by_city(city)

        #note: city is a string 

        return Listings.all.select {|listing| listing.city == city}
    end 

    def self.most_popular #return listing with most trips 

        #note: does not work well with ties 
        Listings.all.max_by do |listing|

            listing.trip_count 
            
        end 
    end 



end 