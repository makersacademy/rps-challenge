class Computer

	attr_reader :computer_character
	
	WEAPONS = [:Rock, :Paper, :Scissors]

	def random_select
		@computer_character  = WEAPONS.sample
	end

end