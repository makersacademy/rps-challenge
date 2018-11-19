class Computer

  attr_reader :name, :computer_choice

  WEAPONS = [:rock, :paper, :scissors]

  def initialize
    @name = "Macbook Pro"
  end

  def selection
    @computer_choice = choose_weapon
  end

  private

  def choose_weapon
    WEAPONS.sample
  end

end
