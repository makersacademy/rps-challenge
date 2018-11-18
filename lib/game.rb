class Game
	attr_accessor :name_player, :player_weapon, :computer_weapon
	def initialize(name_player, player_weapon)
		@name_player = name_player
		@player_weapon = player_weapon
	end

	def computer_weapons
		[:rock, :paper, :scissors].sample
	end
end