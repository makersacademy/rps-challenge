require_relative 'player'

class Game
  attr_reader :player_1

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def play(player_1_choice)
    @player_1.pick_specified player_1_choice
  end

end
