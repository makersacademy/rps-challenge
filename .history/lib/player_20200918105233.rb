class Player 
	attr_reader :name, :score
	SCORE = 0
	def initialize(name)
		@name = name
		@score = SCORE
	end 

	def play(player)
		player.receive_points
	end 

	def reveive_points
		@score += 1
	end 
end 