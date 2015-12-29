def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(array)
	array.empty? ? 0 : array.inject(:+)
end

def multiply(array)
	array.empty? ? 0 : array.inject(:*)
end

def power(base, exponent)
	base ** exponent
end

def factorial(num)
	return 1 if num == 0
	result = 1
	(1..num).each do |i|
		result *= i
	end
	result
end