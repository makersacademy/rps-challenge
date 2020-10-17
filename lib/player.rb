class Player
  attr_reader :name, :move

  def initialize(name)
    @name = name
    @choices = ["Rock", "Paper", "Scissors"]
  end
  
  def choose(move)
    @move = move
  end
end
