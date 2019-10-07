    
class Computer

  attr_reader :moves, :name

  def initialize
    @name = "Clive the computer"
    @moves = ["Rock", "Paper", "Scissors"]
  end

  def move
    @moves.sample
  end

end
