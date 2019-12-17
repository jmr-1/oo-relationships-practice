class Magazine

    attr_accessor :name, :price
    @@all = []

    def initialize(name, price)

        @name = name
        @price = price
        @@all << self
    end 

    def self.all

        return @@all
    end 

    def self.most_expensive #finds most expensive magazine out of all magazines

        return self.all.max_by {|magazine|magazine.price}
    end 

    def articles #finds all articles in this magazine 

        return Articles.all.select {|article| article.magazine == self }
    end 

    def authors #finds all authors who have written for this magazine

        return self.articles.map {|article| article.author }
    end 

    def new_article_by_magazine(title, author,  rating)

        #writes new article in this magazine
        return Article.new(title, author, self, rating)
    end 
end 