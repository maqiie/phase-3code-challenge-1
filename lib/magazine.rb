require 'pry'
require_relative '../config/environment.rb'


class Magazine
    attr_accessor :name, :category, :title
    @@all = []
    def initialize(name, category)
        @name = name
        @category = category

        @@all << self
    end
    def self.all
        @@all 
    end
    def contributors
        Article.all.filter{|article| article.magazine == self}.map{|var| var.author}
    end
    def find_by_name (name)
        Magazine.all.find{|magazine| magazine.name == name}
    end
    def  article_titles
        Article.all.filter{|article| article.magazine == self}.map{|var| var.title}
    end
    def contributing_authors
        # filter  and tally
    contributors.tally.each{|key, value| value > 2}
      end
end



# binding.pry