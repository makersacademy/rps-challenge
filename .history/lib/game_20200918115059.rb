require './lib/player.rb'
class Game 
	attr_reader :players, :current_player

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

	def play(current_turn)
		current_turn.get_points
	end 

	def switch_turns
		@current_turn = opponent
	end 

	def opponent
		players.select { |player| player != current_player }.first
	end 

end 