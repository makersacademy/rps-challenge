
class Computer
  def initialize
    @name = "The Computer"
    @choices = ["Rock", "Paper", "Scissors"]
    @move = nil
  end

  attr_accessor :name, :move

  def random_move
    @choices.sample
  end

end
