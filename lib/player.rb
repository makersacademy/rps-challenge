class Player
  attr_reader :move, :name

  def initialize(name)
    @name = name
  end

  def move(move)
    @move = move
  end
end