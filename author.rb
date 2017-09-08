class Author
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def books
    Book.all
  end

  def write_book(title, author, wordcount)
    Book.new(title, self, wordcount)
  end

  def total_words
    self.books.inject(0){|sum,x| sum + x.wordcount}
  end

  def self.most_words
    max = 0
    verbose_author = nil
    self.books.each do |author|
      author.total_words
      if author.total_words > max
        max = author.total_words
        verbose_author = author.name
      end
    end
  end
end
