def add(a, b)
	return (a + b)
end

def subtract(a, b)
	return (a - b)
end

def sum(array)
	sum = 0
	size = array.length
	size.times do |i|
		sum = sum + array[i]
	end
	return sum
end

def multiply(a, b)
	return (a * b)
end

def power(a, b)
	return (a ** b)
end

def factorial(factor)
	if factor < 0
		return nil
	else
		result = 1
		while (factor > 1)
			result = result * factor
			factor = factor - 1
		end
		return result
	end
end