class Player

  OPTIONS = ["rock", "paper", "scissors"]

  attr_accessor :name, :options

  def initialize(name = "computer")
    @name = name
    @options = options
  end

  def generate_choice
    "rock"
  end
end
