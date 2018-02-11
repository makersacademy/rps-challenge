class Player

  MOVES = [:rock, :paper, :scissors]

  attr_reader :name, :move

  def initialize(name = "Player")
    @name = name
  end

  def choose(move)
    @move = move.downcase.to_sym
  end

end
