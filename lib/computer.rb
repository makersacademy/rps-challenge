require 'player'

class Computer < Player
  def initialize
    @name = "Computer"
    @score = 0
  end

  def move
    ["Rock", "Paper", "Scissors"].sample
  end

end