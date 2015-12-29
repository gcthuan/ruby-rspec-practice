def translate(string)
	vowels = %w(a e i o u)
	result = ""
	string.split.map do |word|
		pos = 0
		word.each_char do |char|
			if vowels.include? char
				word = word[pos..-1]
				result += "#{word}ay "
				break
			else
				if word[0..1] == "qu"
					word += word[0..1]
					result += "#{word[2..-1]}ay "
					break
				elsif word[1..2] == "qu" && ((vowels.include? char) == false)
						word += word[0..2]
						result += "#{word[3..-1]}ay "
						break
				end
				word += word[pos]
			end
			pos += 1
		end
	end
	result[0..-2]
end