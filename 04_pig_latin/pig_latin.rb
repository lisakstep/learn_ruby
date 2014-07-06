def translate(phrase)

vowels = "aeiou"
platin_ending = "ay"
processed_phrase = phrase.split
pig_latin_phrase = []


while processed_phrase.length > 0

	word = processed_phrase[0]


	first_letter = word.byteslice(0)
	if vowels.include? first_letter
		pig_latin_word = word + platin_ending
	end

	if !vowels.include? first_letter

		new_root = word.delete first_letter
		second_letter = new_root.byteslice(0)

		pig_latin_word =  new_root + first_letter + platin_ending

		if !vowels.include? second_letter or ( first_letter == 'q' and second_letter == 'u')
			new_root = new_root.delete second_letter
			third_letter = new_root.byteslice(0)

			pig_latin_word =  new_root + first_letter + second_letter + platin_ending


			if !vowels.include? third_letter or (second_letter == 'q' and third_letter == 'u')
				new_root = new_root.delete third_letter

				pig_latin_word =  new_root + first_letter + second_letter + third_letter + platin_ending

			end

		end

	end
	
	pig_latin_phrase.push(pig_latin_word)

	#get rid of first element of pig_latin_phrase
	processed_phrase.delete_at(0)
end


	#pig_latin_word
	pig_latin_phrase.join(' ')
end