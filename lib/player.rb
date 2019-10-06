class Player
  attr_reader :name, :move

  def initialize(name)
    @name = name
    @move = nil
  end

  def move(rps)
    @move = rps
  end

  def random_move
    move = rand(0..2)
    return 'rock' if move == 0
    return 'paper' if move == 1
    return 'scissors' if move == 2
  end

end
