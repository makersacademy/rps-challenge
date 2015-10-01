class Player

  attr_reader :name, :shape

  def initialize(name)
    @name = name
    @shapes = ["rock", "paper", "scissors", "lizard", "spock"]
  end

  def choose(shape)
    fail "Please choose between rock, paper, scissors, lizard or spock." unless @shapes.include?(shape)
    @shape = shape.to_sym
  end

end
