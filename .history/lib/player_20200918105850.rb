class Player 
	attr_reader :name, :score
	SCORE = 0
	def initialize(name)
		@name = name
		@score = SCORE
	end 

	def play
		self.get_points
	end 

	def get_points
		@score += 1
	end 
end 