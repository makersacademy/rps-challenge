class Computer 

  attr_reader :move, :name
  def initialize
    @name = "computer"
  end 

  def move
    @move = ["Rock", "Paper", "Scissors"].sample
  end 
end 