class Player 
	attr_reader :name, :score
	SCORE = 0
	def initialize(name)
		@name = name
		@score = SCORE
	end 
end 