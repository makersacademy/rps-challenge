class Player
  attr_reader :name, :current_move
  attr_accessor :name, :wins, :losses

  def initialize name = 'COMPUTER'
    @name = name
    @moves = [:rock, :paper, :scissors]
    @wins = 0
    @losses = 0
  end

  def make_move move
    @current_move = move
  end

end