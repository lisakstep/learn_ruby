class Book 
attr_accessor :title
	
#words_to_ignore = [ 'and', 'in']
	def title
		separate_words = @title.split(' ')

		separate_words.each do |word|  

			words_to_ignore = ['and', 'or', 'in', 'of', 'the', 'a', 'an']
				
			if words_to_ignore.include? word
				word
			else
				word.capitalize!
			end
		end

		separate_words[0].capitalize!
		@title = separate_words.join(' ')
		
	end

end