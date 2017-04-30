
class Game

	attr_reader :players

	def self.game
		@game
	end

	def self.game= (game)
		@game = game
	end


	def initialize(player_1, player_2)
		@players = [player_1, player_2]
	end

	def player_1
		@players[0]
	end

	def player_2
		@players[1]
	end

end
