def check_for_sch(sentence, i)
	if sentence[i] == 's' && sentence[i + 1] == 'c' && sentence[i + 2] == 'h'
		i = i + 3
	end
	return i
end

def check_for_consonants(sentence, i)
	while sentence[i] != "a" && sentence[i] != "e" && sentence[i] != "i" && sentence[i] != "o" && sentence[i] != "u"
		i = i + 1
	end
	return i
end

def check_for_qu(sentence, i)
	if sentence[i] == 'q' && sentence[i + 1] == 'u'
		i = i + 2
	elsif i > 0 && sentence[i - 1] == 'q' && sentence[i] == 'u'
		i = i + 1
	end
	return i
end

def translate_word(sentence, i)
	j = 0
	size = sentence.length
	new_word = String.new
	while j < (size - i)
		new_word[j] = sentence[i + j]
		j = j + 1
	end
	k = 0
	while k < i
		new_word[j] = sentence[k]
		j = j + 1
		k = k + 1
	end
	new_word[j] = 'a'
	new_word[j + 1] = 'y'
	return new_word
end

def translate(sentence)
	word = sentence.split
	size = word.length
	if size == 1
		i = check_for_sch(sentence, 0)
		i = check_for_consonants(sentence, i)
		i = check_for_qu(sentence, i)
		new_word = translate_word(sentence, i)
	else
		new_word = String.new
		j = 0
		while j < size
			new_word = new_word + translate(word[j])
			if (j != (size - 1))
				new_word = new_word + " "
			end
			j = j + 1
		end
	end
	return new_word
end