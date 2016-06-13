class Player

	MOVES = ['rock', 'paper', 'scissors']

	attr_reader :name, :score

	def initialize(name)
		@name = name
		@score = 0
	end

	def play(move = nil)
		if move == nil
			return MOVES.sample
		else
			return move
		end
	end

	def win
		@score += 1
	end

end
