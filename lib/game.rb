class Game
private
	attr_reader :players
public
	def initialize player_1: , player_2: Player.new
		@players = [player_1, player_2]
	end

	def player_1
		@players.first
	end

	def player_2
		@players.last
	end

	def self.create player_1:
		@game = Game.new(player_1: player_1)
	end

	def self.instance
		@game
	end

end