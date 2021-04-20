class Computer
  CHOICE = [:rock, :paper, :scissors]
  attr_accessor :weapon

  def initialize(weapon = CHOICE)
    @weapon = weapon
  end

  def random_choice
    @weapon = CHOICE.sample
  end
end
