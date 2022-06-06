class Player

  attr_reader :name, :move, :wins

  def initialize(name)
    @name = name
    @wins = 0
  end

  def current_move(move)
    @move = move
  end

  def won
    @wins += 1
  end

  def computer?
    false
  end

end