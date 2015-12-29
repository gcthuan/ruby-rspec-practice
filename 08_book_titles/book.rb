class Book
	def title=(val)
		@title = titleize(val)
	end

	def title
		@title
	end
	
	
end

def titleize(string)
	words_to_ignore = ["and", "over", "the", "of", "in", "a", "an"]
	# dont capitalize ignored words
	words = string.split.map do |word|
		words_to_ignore.include?(word) ? word : word.capitalize
	end
	words.first.capitalize!
	words.join(" ")
end

p titleize("sad asdsa 123 asd")