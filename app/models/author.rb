class Author

    attr_accessor :name 
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all

        return @@all
    end 

    def articles #returns all articles  written by this author 

        return Article.all.select {|article| article.author == self }
    end 

    def magazines #returns all magazines for which this author has written 

       return self.articles.map {|article| article.magazine}
    end 

    def new_article_by_author(title, magazine,  rating)

        #writes new article by this author
        return Article.new(title, magazine, self, rating)
    end 

    def average_rating #average rating of an author instance



    end 
end 