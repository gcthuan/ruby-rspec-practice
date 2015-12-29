def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, n=2)
	result = ""
	n.times do
		result = result + "#{word} "
	end
	# remove the extra space at the end
	result[0..-2]
end

def start_of_word(word, num_of_chars)
	word[0..num_of_chars-1]
end

def first_word(word)
	word.split[0]
end

def titleize(string)
	words_to_ignore = ["and", "over", "the", "of"]
	# dont capitalize ignored words
	words = string.split.map do |word|
		words_to_ignore.include?(word) ? word : word.capitalize!
	end
	words.first.capitalize!
	words.join(" ")
end