class Computer
  attr_reader :move, :name

  def initialize
    @move = ["Rock", "Paper", "Scissors"].sample
    @name = "Computer"
  end
end
