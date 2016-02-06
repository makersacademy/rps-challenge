class Game

attr_reader :weapons

	def initialize 
		@weapons = ["Rock", "Paper", "Scissors"]
	end 

	def opponent
 	@weapons.sample
	end

end