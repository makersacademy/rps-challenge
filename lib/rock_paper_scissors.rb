#undestands the rules of the game

class RockPaperScissors
  def initialize(player_1, player_2=AI.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  #1 is a win for player_1, 0 a draw, -1 a win for player 2
  def outcome
    rules = create_rules_for_player_1  
    1 - rules.index(@player_2.weapon)   
  end

  #any weapon beats weapons to its right and is beaten by ones on its left
  BASE_RULES = %w(S P R)
  
  private

  def create_rules_for_player_1
    rules = BASE_RULES
    until rules[1] == @player_1.weapon
      rules.rotate!
    end 
    rules
  end
end
