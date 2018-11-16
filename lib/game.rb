class Game

	attr_reader :rules

	def initialize
		@rules = {
		"rock": {
			"scissors": "win",
			"paper": "lose",
			"rock": "tie"
		},
		"paper": {
			"scissors": "lose",
			"rock": "win",
			"paper": "tie"
		},
		"scissors": {
			"scissors": "tie",
			"rock": "lose",
			"paper": "win"
			}
		}
	end

	def decide_winner (ai_choice, player_choice)
		@rules[player_choice.to_sym][ai_choice.to_sym]
	end

end