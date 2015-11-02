class Computer

	attr_reader :move

	MOVES = [:rock, :paper, :scissors, :spock, :lizard]

	def initialize  
		@move = nil
	end

	def choice
		@move = MOVES.sample
	end
end