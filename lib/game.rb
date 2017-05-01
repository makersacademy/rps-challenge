
class Game

	RULES = {rock: :scissors, paper: :rock, scissors: :paper}
	attr_reader :players

	def self.game
		@game
	end

	def self.game= (game)
		@game = game
	end

	def initialize(player_name, player_2_name = "Computer")
		player_2_name = "Computer" if player_2_name == ""
		@players = [Player.new(player_name), Player.new(player_2_name)]
	end

	def player_1
		@players[0]
	end

	def player_2
		@players[1]
	end

	def play(weapon)		
		outcome(player_weapon(weapon), computer_weapon)
	end

	def outcome(player_weapon, computer_weapon)
		if RULES[player_weapon] == computer_weapon
			:win
		elsif  player_weapon == computer_weapon
			:draw
		else
			:lose
		end
	end

	def player_weapon(weapon)
		raise ArgumentError, 'Error in weapon choice' unless RULES[weapon.to_sym]
		weapon.to_sym
	end

	def computer_weapon
		RULES.keys.sample
	end

end
