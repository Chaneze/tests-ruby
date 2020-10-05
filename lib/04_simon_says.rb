def echo(word)
	return word
end

def shout(word)
	return word.upcase
end

def repeat(word, num = 2)
	repeat = String.new
	num.times do |i|
		repeat = repeat + word
		if i != (num - 1)
			repeat = repeat + " "
		end
	end
	return repeat
end

def start_of_word(word, num)
	return word.slice(0...num)
end

def first_word(word)
	return word.split[0]
end

def titleize(word)
	tab = word.split
	size = tab.length
	size.times do |i|
		if tab[i].length > 3 || i == 0
			tab[i] = tab[i].capitalize
		end
	end
	return tab.join(" ")
end