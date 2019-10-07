class Player
  
  attr_reader :name, :move

  def initialize(name, move)
    @name = name
    @move = move
  end

  def set_move(choice)
    @move = choice
  end

end
