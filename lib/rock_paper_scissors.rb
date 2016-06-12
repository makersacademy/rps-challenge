#undestands the rules of the game

class RockPaperScissors
  def initialize(player_1, player_2=AI.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  #positive n is a win for player_2, 0 a draw, negative n is a win for player_1
  def outcome
    rules = create_rules_for_player_1  
    rules.index(@player_2.weapon) - 2
  end

  #any weapon beats weapons to its ledt and is beaten by ones on its right
  BASE_RULES = %w(L S R SP P)
  
  private

  def create_rules_for_player_1
    rules = BASE_RULES
    until rules[2] == @player_1.weapon
      rules.rotate!
    end 
    rules
  end
end
