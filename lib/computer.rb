class Computer
  attr_reader :name

  WEAPONS = [:rock, :paper, :scissors]

  def initialize
    @name = "computer"
  end

  def random_weapon_chooser
    WEAPONS.sample
  end

end
