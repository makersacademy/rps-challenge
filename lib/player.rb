class Player

  attr_reader :name, :chosen_shape

  def initialize(name)
    @name = name
    @chosen_shape = nil
    @shapes = ["rock", "paper", "scissors"]
  end

  def choose(shape)
    fail "Please choose between rock, paper or scissors." unless @shapes.include?(shape)
    @chosen_shape = shape
  end


end
