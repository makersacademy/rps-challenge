class Computer

	attr_reader :computer_character
	
	def random_select
		@computer_character  = [:Rock, :Paper, :Scissors].sample
	end

end