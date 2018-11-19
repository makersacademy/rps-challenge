class Computer

  attr_reader :name, :computer_choice

  WEAPONS = [:rock, :paper, :scissors]

  def initialize
    @name = "Macbook Pro"
  end

  def selection
    @computer_choice = randomizer
  end

  private

  def randomizer
    WEAPONS.sample
  end

end
