
class Computer
  def initialize
    @name = "The Computer"
    @move = nil
  end

  attr_accessor :name, :move

  def random_move
    @random_move = ["Rock", "Paper", "Scissors"].sample
  end

end
