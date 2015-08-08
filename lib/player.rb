class Player
  attr_reader :name, :current_move, :name, :wins, :losses, :draws

  def initialize name
    @name = name
    @wins = 0
    @losses = 0
    @draws = 0
    @current_move
  end

  def make_move move
    @current_move = move
  end

  def win
    @wins += 1
  end

  def draw
    @draws += 1
  end

  def lose
    @losses += 1
  end

end