require_relative './move.rb'

class ComputerPlayer

  attr_reader :move

  def choose_move(move)
    @move = move
  end

  def name
    "Computer"
  end
end
