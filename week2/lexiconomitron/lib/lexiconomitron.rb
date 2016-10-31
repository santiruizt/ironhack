require 'pry'

class Lexiconomitron

	def eat_t(string)
		string.gsub("t", "").gsub("T", "")
	end

	def shazam(string)

		reversed_words_array = eat_t(string).split(" ")
		reversed_words_array.each do |word|
			word.reverse!
		end
		first_and_last_word = []
		first_and_last_word.push(reversed_words_array.first)
		first_and_last_word.push(reversed_words_array.last)
		first_and_last_word
	end

	def oompa_loompa(string)
		short_words = []
		words_array = eat_t(string).split(" ")
		words_array.select do |word|
			if word.length <= 3
				short_words.push(word)
			end	
	end
end

	#binding.pry

end

p Lexiconomitron.new.shazam("this is a test")