class Computer

  attr_reader :name, :weapon

  def initialize
    @name = "Computer"
    @weapon = weapon
  end

  def random_weapon
    @weapon = ["Rock", "Paper", "Scissors"].sample
  end
end
