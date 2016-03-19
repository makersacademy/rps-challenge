class Player

  attr_reader :name, :move, :wins

  def initialize(name:)
    @name = name
    @wins = 0
  end

  def play(move)
    @move = move
  end

  def win!
    @wins += 1
  end
end
