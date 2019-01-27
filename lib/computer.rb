class Computer

  attr_reader :hand

  def initialize
    @name = "Computer"
    @hand
  end

  def play_hand
    @hand = ["Rock", "Paper", "Scissors"].sample
  end

end
