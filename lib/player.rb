class Player

  attr_accessor :moves, :won
  def initialize
    @moves = nil
    @won = 0
  end

  def play move
    @moves = move.downcase
  end
end

