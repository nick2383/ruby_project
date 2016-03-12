# 02_calculator
# Author: Nick Birch

def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(numbers)
	numbers.inject(0){|result, element| result + element}
end

def multiply(numbers)
	numbers.inject(1){|result, element| result * element}
end

def power(base, exponent)
	result = 1
	exponent.times do
		result = result*base
	end
	return result
end

def factorial(num)
	if(num == 0)
		return 1
	else
		result = num
		(num-1).times do |i|
			result = result * (num-1-i)
		end
		return result
	end
end