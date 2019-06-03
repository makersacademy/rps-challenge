class Player

  attr_reader :name, :move

  def initialize(name)
    @name = name
  end

  def assigned(move)
    @move = move
  end

end
