require_relative 'player'

class Game

  attr_reader :player_1

  def initialize(player_1, player_2 = "CPU")
    @player_1 = player_1
    @player_2 = player_2
  end

  def set_move(player, choice)
    player.move(choice)
  end


end