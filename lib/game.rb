class Game

	attr_reader :potential_winning_combinations

	def initialize
		@new_player = nil
		@potential_winning_combinations = { paper: :rock, rock: :scissors, scissors: :paper }
	end

	def outcome(player1_selection, opponent_selection)
		if opponent_selection == potential_winning_combinations[player1_selection]
		message = "Congratulations, you have won!"
		end
		return message
	end

	def add_player(player1)
		@new_player = player1
	end

	def random_strategy
		potential_winning_combinations.keys.sample
	end
end