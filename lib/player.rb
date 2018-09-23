class Player
  attr_reader :name
  attr_accessor :chosen_option

  OPTIONS = ["rock", "paper", "scissors"]

  def initialize(name = "Anonymous player")
    @name = name
    @chosen_option = nil
  end

  def choose_option(option)
    @chosen_option = option
  end
end
