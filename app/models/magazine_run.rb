require_relative './article.rb'
require_relative './author.rb'
require_relative './magazine.rb'
require 'pry'

author1 = Author.new("Marija")
author2 = Author.new("John-Louis")
author3 = Author.new("Anna")
magazine1 = Magazine.new("Washington Post", 1.50)
magazine2 = Magazine.new("Cosmo", 13.99)
article1 = Article.new("Beauty", author1, magazine1, 5)
article2 = Article.new("Today", author2, magazine2, 4)
article3 = Article.new("This news", author2, magazine2, 5)
article4 = Article.new("Gym", author3, magazine1, 2)


binding.pry 