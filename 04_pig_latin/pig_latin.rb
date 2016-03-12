# 03_simon_says
# Author: Nick Birch

# def translate(sentence)
# 	vowels = ["a", "e", "i", "o", "u"]
# 	sentence = sentence.split(" ")
# 	sentence = sentence.collect do |word|
# 		if (vowels.include?(word.byteslice(0).downcase))
# 			word + "ay"
# 		else
# 			if !(vowels.include?(word.byteslice(1).downcase))
# 				word = (word + word.byteslice(0,2).downcase + "ay")
# 				word.slice!(0,2)
# 				word
# 			else
# 				word = (word + word.byteslice(0).downcase + "ay")
# 				word.slice!(0)
# 				word
# 			end	
# 		end
# 	end
# 	sentence.join(" ")
# end

def translate(sentence)
	vowels = ["a", "e", "i", "o", "u"]
	sentence = sentence.split(" ")
	sentence = sentence.collect do |word|
		while(!(vowels.include?(word.byteslice(0))))
			word = word + word.byteslice(0)
			word.slice!(0)
		end
		word = word + "ay"
	end
	sentence.join(" ")
end