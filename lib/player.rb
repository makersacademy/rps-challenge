class Player

  attr_reader :name, :shape

  def initialize(name)
    @name = name
  end

  def choose(shape)
    @shape = shape
  end

end
