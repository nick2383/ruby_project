# 08_book_titles
# Author: Nick Birch

class Book
	attr_reader :title

	def title=(str)
		exceptions = ["and", "a", "an", "the", "and", "in", "of"]
		str = str.capitalize.split(" ")
		str = str.map do |word|
			if exceptions.include?(word)
				word
			else
				word.capitalize
			end
		end
		@title = str.join(" ")
	end

	def title
		@title
	end

end