class Game

  attr_reader :player_1, :player_2

  def initialize(player_1_class:, player_2_class:)
    @player_1 = player_1_class
    @player_2 = player_2_class
  end



end
