class Player

  attr_reader :name, :chosen_object

  def initialize(name)
    @name = name
    @chosen_object = nil
  end

  def choose(shape)
    @chosen_object = shape.capitalize
  end

end
