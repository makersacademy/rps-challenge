class Player
  attr_reader :name, :move

  def initialize(name)
    @name = name.capitalize
    @move = move
  end
end
