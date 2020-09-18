require './lib/player.rb'
class Game 
	attr_reader :players, :player1, :player2

	def initialize(player1, player2)
		@players= [player1, player2]
		@current_turn = player1
	end 

	def player1
		@players.first
	end

	def player2
		@players.last
	end 

	def play(player)
		player.get_points
	end 
end 