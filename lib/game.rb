class Game
  attr_reader :player_1, :player_2, :WEAPONS

  WEAPONS = [:rock, :paper, :scissors]

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

end
