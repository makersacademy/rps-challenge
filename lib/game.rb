class Game
private
	attr_reader :players
public
	def initialize player_1: , player_2: nil
		player_2 ||= Player.new
		@players = [player_1, player_2]
	end

	def player_1
		@players.first
	end

	def player_2
		@players.last
	end

	def self.create player_1: , player_2:
		@game = Game.new(player_1: player_1, player_2: player_2)
	end

	def self.instance
		@game
	end

	def winner
		score_1 = player_1.get_weapon.get_score
		score_2 = player_2.get_weapon.get_score
		case score_1 - score_2
		when 0
			nil
		when 1
			player_1
		when -2
			player_1
		when -1
			player_2
		when 2
			player_2
		end
	end

	def loser
		players.find { |player| player != winner }
	end

end