require_relative 'computer'

class Player

  attr_reader :name, :move, :opponent

  def initialize(name, opponent = Computer.new)
    @name = name
    @move = nil
    @opponent = opponent
  end

  def select_move(move)
    @move = move
  end

  # Refactor out the winning logic? Winning class has player and opponent injected?

  def win?
    winning_move
  end

  def winning_move
    move == "Rock" && opponent.move == "Scissors" ||
    move == "Scissors" && opponent.move == "Paper" ||
    move == "Paper" && opponent.move == "Rock"
  end
end
