require_relative '../lib/player'

class Score

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def increment(value_from_rps_logic)
    return if value_from_rps_logic.zero?
    
    if value_from_rps_logic == 1
      @player_1.increase_score
    else
      @player_2.increase_score
    end
  end
end
