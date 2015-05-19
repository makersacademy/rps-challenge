class Player

  attr_accessor :moves
  def initialize
    @moves = nil
  end

  def play move
    @moves = move.downcase
  end
end

