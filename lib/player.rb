
class Player
  attr_reader :name, :move
  def initialize(name)
    @name = name
    @move = ""
  end

  def current_move(move)
    @move = move
  end
end
