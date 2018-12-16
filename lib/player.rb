class Player

  OPTIONS = ["rock", "paper", "scissors"]

  attr_accessor :options, :name

  def initialize(name = "computer", options = OPTIONS.sample)
    @name = name
    @options = options
  end

end
