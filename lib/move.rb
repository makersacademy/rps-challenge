require_relative 'player'

class Move
  attr_reader :player_turns, :computer_turns

  def initialize
    @moves = ["Rock", "Paper", "Scissors"]
    @player_turns = []
    @computer_turns = []
  end

  def computer_move
    @computer_turns << @moves[random_number]
  end

  def player_move(move)
    @player_turns << @moves.detect { |option| option == move }
  end

  private
  def random_number
    Kernel.rand(@moves.count)
  end

end
