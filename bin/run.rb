# require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# authors
author1 = Author.new("Mwenda Muthaura")
author2 = Author.new("kiptrotich dominik")
author3 = Author.new("amin ")

# magazines
magazine1 = Magazine.new("The standard", "news")
magazine2 = Magazine.new("The eye", "Technology")
magazine3 = Magazine.new("National Geographic", "Science")

# articles
article1 = Article.new(author1, magazine1, "taifa leo")
article2 = Article.new(author1, magazine2, "undestanding ruby")
article3 = Article.new(author2, magazine2, "how to be a full stack dev")
article4 = Article.new(author2, magazine3, "workind in tech")
article5 = Article.new(author1, magazine1, "fundamentals of programming")

# test methods - use puts statement to print out the results of the methods


puts author1.magazines

puts magazine1.name

puts Article.all

puts article1.author

puts article5.magazine

puts article4.magazine.topic_area

puts article2.magazine.contributing_authors

# Change the author of an article
new_author = Author.new("markpaul mwenda")
article5.author = new_author
puts article5.author

# Find an article by its title
article = Article.find_by_title("taifa leo")
puts article

