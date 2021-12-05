class Computer
  
  attr_reader :choices 
  
  def initialize
    @choices = ["Rock", "Paper", "Scissors"] 
  end

  def move
    @choices.sample
  end
end