class Computer

  POSSIBLE_SHAPES = ["Rock", "Paper", "Scissors"]

  attr_accessor :shape
  attr_reader :name

  def initialize
    @name = "Bot"
    @shape = nil
  end

  def bot_shape
    @shape = POSSIBLE_SHAPES.sample
  end

end
