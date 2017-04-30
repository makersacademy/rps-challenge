
class Game

	attr_reader :players

	def self.game
		@game
	end

	def self.game= (game)
		@game = game
	end


	def initialize(player_1_name, player_2_name = "Computer")
		player_2_name = "Computer" if player_2_name == ""
		@players = [Player.new(player_1_name), Player.new(player_2_name)]
	end

	def player_1
		@players[0]
	end

	def player_2
		@players[1]
	end

end
