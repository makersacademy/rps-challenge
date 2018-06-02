class Computer
  attr_reader :name, :shape
  
  def initialize
    @name = "Computer"
    @shape= ["rock", "paper", "scissors"].sample
  end
end
