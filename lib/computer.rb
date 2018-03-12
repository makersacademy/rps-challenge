class Computer

  attr_reader :weapon

  def initialize
    @weapon = ["Rock", "Paper", "Scissors"]
  end

  def choice
    @weapon.sample
  end
end
