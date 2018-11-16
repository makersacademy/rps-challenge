class Player

  attr_reader :name, :moves

  def initialize(name = 'Player')
    @name = name
    @moves
  end

  def move(move)
    @moves = move
  end

end
