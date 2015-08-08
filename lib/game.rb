require_relative 'game'

class Game

  attr_reader :player_1, :player_2

  def initialize player_1, player_2
    @player_1 = player_1
    @player_2 = player_2
  end

  def check_win
    raise "Only one player has made their choice" if (player_1.choice == nil || player_2.choice == nil)
    raise "Draw!" if (player_1.choice == player_2.choice)
  end

end
