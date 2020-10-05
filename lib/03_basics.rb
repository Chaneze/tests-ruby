def who_is_bigger(a, b, c)
	if a == nil || b == nil || c == nil
		return "nil detected"
	elsif a >= b && a >= c
		return "a is bigger"
	elsif b >= a && b >= c
		return "b is bigger"
	else
		return "c is bigger"
	end
end

def reverse_upcase_noLTA(str)
	str_upcase = str.upcase
	length = str_upcase.length
	new_str = String.new
	i = 0
	str_upcase.each_char { |letter|
		if (letter != 'L') && (letter != 'T') && (letter != 'A')
			new_str[i] = letter
			i = i + 1
		end
	}
	return new_str.reverse
end

def array_42(array)
	return array.include?(42)
end

def magic_array(array)
	return array.flatten.sort.map { |num| num * 2 }.delete_if{|a| a % 3 == 0}.uniq
end