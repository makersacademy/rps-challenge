class Player
  attr_reader :moves, :name
  def initialize(name)
    @name = name
    @moves = []
  end
  def move(move)
    moves << move
  end

  private
  attr_writer :moves
end
