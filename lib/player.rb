
class Player

  attr_accessor :name, :score, :move

  MOVES = [ :rock, :paper, :scissors ]

  def initialize(name)
    @name = name
    @score = 0
  end

  def win_round
    @score += 1
  end

  def play(move)
    @move = move
  end
end
