class Player

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def choose(move)
    @move = move
  end

  def move
    @move
  end
end
