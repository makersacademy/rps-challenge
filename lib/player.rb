class Player

  attr_reader :name, :move

  def initialize(name = "Computer", move)
    @name = name
    @move = move
  end

end
