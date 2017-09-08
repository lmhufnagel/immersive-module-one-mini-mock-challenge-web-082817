class Book
  attr_accessor :title, :author, :wordcount
  @@all =[]

  def initialize(title, author, wordcount)
    @title = title
    @author = author
    @wordcount = wordcount
    @@all << self
  end

  def self.all
    @@all
  end

end
