class Player
  attr_reader :move, :name
  
  def initialize(name)
    @name = name
  end

  def pick(move)
    @move = move
  end

end