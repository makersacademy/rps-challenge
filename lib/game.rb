class Game
private
	attr_reader :players
public
SCORE_ARRAY = [
								[{r_v_r:"draw"},{r_v_p:"lose"},{r_v_sc:"win"},{r_v_l:"win"},{r_v_sp:"lose"}],
								[{p_v_r:"win"},{p_v_p:"draw"},{p_v_sc:"lose"},{p_v_l:"lose"},{p_v_sp:"win"}],
								[{sc_v_r:"lose"},{sc_v_p:"win"},{sc_v_sc:"draw"},{sc_v_l:"win"},{sc_v_sp:"lose"}],
								[{l_v_r:"lose"},{l_v_p:"win"},{l_v_sc:"lose"},{l_v_l:"draw"},{l_v_sp:"win"}],
								[{sp_v_r:"win"},{sp_v_p:"lose"},{sp_v_sc:"win"},{sp_v_l:"lose"},{sp_v_sp:"draw"}],
							]
VERB_ARRAY = [
								["negates","covers","crushes","crushes","vaporises"],
								["covers","negates","cut","eats","disproves"],
								["crushes","cut","negates","decapitate","smashes"],
								["crushes","eats","decapitate","negates","poisons"],
								["vaporises","disproves","smashes","poisons","negates"],
							]
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

	def result
		score_1 = player_1.get_weapon.get_score
		score_2 = player_2.get_weapon.get_score
		{winner: winner(score_1, score_2), verb: verb(score_1, score_2)}
	end

	def winner score_1, score_2
		case SCORE_ARRAY[score_1][score_2].values.first
		when "draw"
			nil
		when "win"
			player_1
		when "lose"
			player_2
		end
	end

	def verb score_1, score_2
		VERB_ARRAY[score_1][score_2]
	end

	def loser
		players.find { |player| player != result[:winner] }
	end

end