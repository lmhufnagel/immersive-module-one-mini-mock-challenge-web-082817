require 'pry'
require_relative './book'
require_relative './author'

lisa = Author.new("Lisa")
eric = Author.new("Eric")

ha = Book.new("Ha", "Lisa", 450)
hey = Book.new("Hey", "Eric", 222)

binding.pry
8
