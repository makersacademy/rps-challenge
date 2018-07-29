class Player
  attr_accessor :name, :move

  def initialize(name = nil, move = nil)
    @name = name
    @move = move
  end
end
