class Article

    attr_reader :title, :author, :magazine, :rating, :date 
    @@all = []

    def initialize(title, author, magazine, rating, date=Time.now)

        @title, @author, @magazine, @rating = title, author, magazine, rating
        @date = date
        @@all << self 
    end 

    def self.all

        return @@all
    end 



end 