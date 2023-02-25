class Article
    attr_reader :title, :author, :magazine
    attr_accessor :author 
  
    @@all = []
  
    def initialize(author, magazine, title)
      @author = author
      @magazine = magazine
      @title = title
      @@all << self
    end
  
    def self.all
      @@all
    end

    def self.find_by_title(title)
      self.all.find { |article| article.title == title }
    end

    def to_s
      "Title: #{title}, Author: #{author.name}, Magazine: #{magazine.name}"
    end
end