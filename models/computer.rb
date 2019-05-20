    
class Computer

  attr_reader :moves, :name

  def initialize
    @name = "Clive the computer"
    @moves = ["Rock", "Paper", "Scissors"]
  end

  def random_play
    @moves.sample
  end

end