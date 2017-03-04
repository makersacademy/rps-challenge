class Game

  attr_reader :options

  def initialize
    @options = ["Rock", "Paper", "Scissors"]
  end

  def play
    @options.sample
  end

end
