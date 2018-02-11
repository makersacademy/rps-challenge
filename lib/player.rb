class Player

  attr_reader :name, :move

  def initialize(name)
    @name = name
  end

  def choose_move(move)
    @move = move.to_sym
  end

end
