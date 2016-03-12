# 03_simon_says
# Author: Nick Birch

def echo(saying)
	saying
end

def shout(saying)
	saying.upcase
end

def repeat(saying, num = 2)
	([saying]*num).join(" ")
end

def start_of_word(word, letters = 1)
	word.byteslice(0,letters)
end

def first_word(saying)
	saying.split(" ").first
end

def titleize(saying)
	little_words = ["and", "or", "the", "over", "to", "a", "an", "but"]
	saying = saying.capitalize.split(" ")
	saying = saying.map do |word|
		if little_words.include?(word)
			word
		else
			word.capitalize
		end
	end
	saying = saying.join(" ")
end
