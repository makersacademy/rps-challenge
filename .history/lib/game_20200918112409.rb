require './lib/player.rb'
class Game 
	def initialize(player1, player2)
		@players= [player1, player2]
	end 
	
	def play(player)
		player.get_points
	end 
end 