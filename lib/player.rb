class Player
  attr_reader :name, :move

  MOVES = ["Rock", "Paper", "Scissors"]

  def initialize(name)
    @name = name
  end

  def choose_rock
    @move = MOVES[0]
  end

  def choose_paper
    @move = MOVES[1]
  end

  def choose_scissors
    @move = MOVES[2]
  end

  def choose_random
    @move = MOVES.sample
  end

  def reset_move
    @move = nil
  end

  def chose_rock?
    @move == MOVES[0]
  end

  def chose_paper?
    @move == MOVES[1]
  end

  def chose_scissors?
    @move == MOVES[2]
  end
end
