class Player
  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def choose(move)
    @choice = move
  end
end
