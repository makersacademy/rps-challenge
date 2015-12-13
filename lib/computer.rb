require_relative 'game'

class Computer
	attr_reader :name

	def initialize
		@name = 'Computer'
	end

	def computer_choice
		@choice = Game::WEAPONS.sample
	end

end