class Game
	WEAPONS = [:rock, :paper, :scissors]
	RULES = {
		paper:    {scissors: :lose, paper: :tie,  rock: :win},
		rock:      {scissors: :win,  paper: :lose, rock: :tie},  
		scissors: {scissors: :tie,   paper: :win,  rock: :lose}
	}
	attr_accessor :name_player, :player_weapon, :computer_weapon, :final
	def initialize(name_player, computer_weapon = WEAPONS.sample)
		@name_player = name_player
		@computer_weapon = computer_weapon
	end

	def player_weapons(player_weapon)
		@player_weapon = player_weapon.to_sym
	end

	def computer_weapons
		@computer_weapon = WEAPONS.sample
	end

	def result
		computer_weapons
		@final = RULES[@player_weapon][@computer_weapon]
	end
end