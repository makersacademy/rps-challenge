module Comparator
                
  def self.compair comparable_player_1, comparable_player_2
    metrics comparable_player_1, comparable_player_2
  end

  def self.metrics
    if comparable_player_1[0] > comparable_player_2[0]
      comparable_player_1[1]
    else
      comparable_player_2[1]
    end
  end
  
end





