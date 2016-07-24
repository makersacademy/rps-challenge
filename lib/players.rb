# understands the players in the game
require_relative 'player'

class Players

	AI = :computer
	attr_reader :players, :player_1, :player_2

	def initialize(players)
		@players = players
		@player_1 = nil
		@player_2 = nil
	end



end