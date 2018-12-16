class Player

  OPTIONS = ["rock", "paper", "scissors"]

  attr_reader :options, :name

  def initialize(name = "Opponent", options = OPTIONS.sample)
    @name = name
    @options = options
  end

end
