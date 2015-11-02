class Player
  attr_reader :name, :shape

  def initialize(name)
    @name = name
  end

  def shape=(shape)
    @shape = shape.downcase.to_sym
  end
end