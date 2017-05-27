class Player
  attr_reader :name, :shape

  def initialize(name)
    @name = name
  end

  def shape=(shape)
    fail 'Not a possible shape' unless Game::SHAPES.includes? shape
    @shape = shape
  end

end
