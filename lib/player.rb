# Player initializes a name for the player 1 and roll functionality for computer
class Player

  attr_reader :name, :random_attack, :roll

  def initialize(name)
    @name = name
  end

  def random_attack
    ["Rock", "Paper", "Scissors"].sample
  end

end