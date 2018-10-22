
class Computer
WEAPONS = ["Rock", "Paper", "Scissors"]

  def initialize
    @name = "The Computer"
    @move = nil
  end

  attr_accessor :name, :move

  def random_move
    @move = WEAPONS.sample
  end

end
