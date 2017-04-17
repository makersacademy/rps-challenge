

class Computer
	attr_reader :name

	def initialize
		@name = 'Computer'
	end

	def computer_choice
		Game::WEAPONS.sample
	end

end
