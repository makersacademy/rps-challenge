class Person

  attr_reader :name, :move

  def initialize(name)
    @name = name
  end

  def store_move(move)
    @move = move
  end
end
