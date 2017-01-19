class Player
  attr_reader :name, :move

  def initialize(name)
    @name = name
  end

  def make_move(move)
    @move = move.downcase.to_sym
  end

end
