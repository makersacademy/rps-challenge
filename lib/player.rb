class Player
  attr_accessor :name, :shape

  def initialize(name: nil, shape: nil)
    @name = name
    @shape = shape
  end
end
