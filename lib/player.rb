class Player
  attr_reader :name, :move

  def initialize(name, move = "not yet picked")
    @name = name
    @move = move
  end
end
