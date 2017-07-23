class Computer
  attr_reader :name

  WEAPONS = [:rock, :paper, :scissors]

  def initialize
    @name = "Computer"
  end

  def random_weapon_chooser
    WEAPONS.sample
  end

end
