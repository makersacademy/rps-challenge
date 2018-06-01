class Computer
  attr_reader :name, :shape
  
  def initialize
    @name = "computer"
    @shape = ["rock", "paper", "scissors"].sample
  end
end
