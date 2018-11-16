class Player

  attr_reader :name, :moves

  def initialize(name)
    @name = name
    @moves = ""
  end

  def move(move)
    @moves = move
  end

end
