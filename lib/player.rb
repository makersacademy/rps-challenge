class Player
  attr_reader :name, :chosen_option, :options

  def initialize(name = "Anonymous player")
    @name = name
    @chosen_option = nil
    @options = ["rock", "paper", "scissors"]
  end

  def choose_option(option)
    @chosen_option = option
  end

end
