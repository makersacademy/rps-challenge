class Player
  attr_reader :name
  attr_accessor :move

  def initialize(name = nil, move = nil)
    @name = name
    @move = move
  end
end
