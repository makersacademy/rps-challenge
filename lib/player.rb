class Player

  OPTIONS = ["rock", "paper", "scissors"]

  attr_accessor :name, :options

  def initialize(name = "computer", options = OPTIONS.sample)
    @name = name
    @options = options
  end

  def generate_choice
    OPTIONS.sample
  end
end
