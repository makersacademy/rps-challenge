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
    @player_hand_selection = @player(move)
    @computer_hand_selection = @computer.hand_selection
    @round = [@player_hand_selection, @computer_hand_selection]
  end

  def named_player
    @player.name
  end
end
