require_relative 'player'
require_relative 'computer'

class Game

  HAND_SELECTION = [:rock, :paper, :scissors]


attr_reader :player, :computer

def initialize(player, computer = Computer.new)
  @player = player
  @computer = computer
  end

  def play(move)
    @player_hand_selection = @player
  end

  def named_player
    @player.name
  end
end
