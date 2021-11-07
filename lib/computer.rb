class Computer

  attr_reader :name, :move

  def initialize
    @name = "Computer"
    @move = ["Rock", "Paper", "Scissors"]
  end

  def random
    @move = @move.sample
  end

end