class Player
  def initialize(name, move = nil)
    @name = name
    @move = move
  end

  attr_accessor :name, :move

end
