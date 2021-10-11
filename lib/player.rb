class Player
  attr_reader :name, :move
  def initialize(name)
    @name = name
  end

  def add_choice(move)
    @move = move
  end
end
