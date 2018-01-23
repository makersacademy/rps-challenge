class Player

  attr_reader :name, :choice

  WEAPONS = ["rock", "paper", "scissors"]

  def initialize(name)
    @name = name
  end

  def move(move)
    @choice = move
  end

end
