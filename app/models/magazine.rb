class Magazine
  attr_reader :name, :category
  attr_accessor :topic_area

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find { |magazine| magazine.name == name }
  end

  def article_titles
    Article.all.select { |article| article.magazine == self }.map { |article| article.title }
  end

  def contributing_authors
    Article.all.select { |article| article.magazine == self }.map { |article| article.author }.group_by { |author| author }.select { |author, articles| articles.size > 2 }.keys
  end

  def to_s
    @name
  end
end
