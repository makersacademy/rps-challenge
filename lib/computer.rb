class Computer 

  attr_reader :move, :name
  def initialize
    @name = "computer"
    @move = ["Rock", "Paper", "Scissors"].sample
  end 

end 