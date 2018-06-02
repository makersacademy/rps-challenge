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

  # Refactor out winning logic? Winning class has player and opponent injected?

  def win?
    winning_move
  end

  def winning_move
    winning_move1 || winning_move2 || winning_move3
  end

  def winning_move1
    move == "Rock" && opponent.move == "Scissors"
  end

  def winning_move2
    move == "Scissors" && opponent.move == "Paper"
  end

  def winning_move3
    move == "Paper" && opponent.move == "Rock"
  end

  def loose?
    loosing_move
  end

  def loosing_move
    loosing_move1 || loosing_move2 || loosing_move3
  end

  def loosing_move1
    move == "Rock" && opponent.move == "Paper"
  end

  def loosing_move2
    move == "Scissors" && opponent.move == "Rock"
  end

  def loosing_move3
    move == "Paper" && opponent.move == "Scissors"
  end

end
