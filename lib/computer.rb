require_relative './player'
require_relative './game'

class Computer < Player

	def initialize
		super('Computer')	
	end

	def play(standard_mode)
		@choice = standard_mode ? Game::STANDARD.keys.sample : Game::EXTENDED.keys.sample
	end
	
end