class Player
  attr_reader :name, :choice

  OPTIONS = ["rock", "paper", "scissors"]

  def initialize(name = "Computer")
    @name = name
    @choice = nil
  end

  def choose(option)
    @choice = option
  end

  def random_choice
    @choice = OPTIONS.sample
  end

end
