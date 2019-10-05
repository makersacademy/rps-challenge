require_relative 'player'

class Move
  def initialize
    @moves = ["Rock", "Paper", "Scissors"]
  end

  def computer_move
    @moves[random_number]
  end

  def player_move(move)
    @moves.detect { |option| option == move }
  end

  private
  def random_number
    Kernel.rand(@moves.count)
  end

end
