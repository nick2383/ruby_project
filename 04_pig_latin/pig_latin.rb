# 03_simon_says
# Author: Nick Birch

def translate(sentence)
	vowels = ["a", "e", "i", "o", "u"]
	sentence = sentence.split(" ")
	sentence = sentence.collect do |word|
		while(!(vowels.include?(word.byteslice(0))))
			word = word + word.byteslice(0)
			if(word.byteslice(0).downcase == "q")
				word = word + word.byteslice(1)
				word.slice!(0)
			end
			word.slice!(0)
		end
		word = word + "ay"
	end
	sentence.join(" ")
end