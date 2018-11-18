class Player
  attr_reader :name, :weapon

  def initialize(name = "Hal")
    @name = name
  end

  def choice(weapon = ["rock", "paper", "scissors"].sample)
    @weapon = weapon
  end
end
