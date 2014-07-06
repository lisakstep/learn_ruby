
def echo(words)
	words
end

def shout(words)
	words.upcase
end

def repeat(words, times = 2)
	([words]*times).join(' ')
end

def start_of_word(words, letters)

	if letters == 1
	  words.byteslice(0)
	else
	  words.byteslice(0, letters)
	end
	
end

def first_word(words)

	words.split(' ').first

end

def titleize(words)
	#words.split(' ').each{|x| x.capitalize!}.join(' ')
	# "#{x.split.each{|x| x.capitalize!}.join(' ')}"
	split_title = words.split
	split_title.each do |word|
		if word != 'and' and word != 'the' and word != 'over'
			word.capitalize!

		else
			word.downcase!
		end

	end
	split_title.first.capitalize!
	split_title.join(' ')
end
