class Player
  attr_reader :name, :options, :chosen_option

  def initialize(name)
    @name = name
    @options = ["rock", "paper", "scissors"]
    @chosen_option = nil
  end

  def choose_option(option)
    @chosen_option = option
  end

  def computer_option
    options.sample
  end
end
