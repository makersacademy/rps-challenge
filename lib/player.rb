class Player
  attr_reader :name, :score, :move

  def initialize(name)
    @name = name
    @score = 0
    @move = ""
  end

  def set_move(move)
    @move = move
  end

end
