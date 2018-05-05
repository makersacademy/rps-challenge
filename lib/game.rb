class Game
  attr_reader :player_two, :player_one
  def initialize(player_one)
    @player_one = player_one
    @player_two = [:rock, :paper, :scissors]
  end
end
