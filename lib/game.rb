class Game
  attr_reader :players, :WEAPONS
  
  WEAPONS = [:rock, :paper, :scissors]

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

end
