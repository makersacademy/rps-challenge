class Computer_player

	attr_reader :moves

	def initialize
		@moves = ["rock", "paper", "scissors"]
	end

	def attack
		@moves.sample
	end

end