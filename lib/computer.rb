require_relative './player'

class Computer < Player

	STANDARD = {rock: 1, paper: 2, scissors: 3}.freeze
  EXTENDED = {rock: 0, spock: 1, paper: 2, lizard: 3, scissors: 4}.freeze
	
	def initialize
		super('Computer')	
	end

	def play(standard_mode)
		@choice = standard_mode ? STANDARD.keys.sample : EXTENDED.keys.sample
	end

	def computer?
		true
	end
end