class Player

	attr_reader :name, :move, :score

	def initialize name 
		@name = name.capitalize
		@move = nil
		@moves = [:rock, :paper, :scissors, :spock, :lizard]
		@score = 0
	end

	def log move
		move == :comp ? computer_choice : @move = move
	end

	def win
		@score += 1
	end

	private

		def computer_choice
			@move = @moves.sample
		end
end
