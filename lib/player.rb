class Player
  attr_reader :name, :current_move
  attr_accessor :name, :wins, :losses, :draws

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

end