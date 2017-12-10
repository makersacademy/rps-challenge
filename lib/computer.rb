class Computer
  attr_reader :computer_choice
  WEAPONS = [:rock, :paper, :scissors]

  def weapon
    @computer_choice = WEAPONS.sample
  end
end
