class Game

  # Or should we have two separate player_1, player_2 methods
  # as in the weekly challenge?
  
  attr_reader :players

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

end
