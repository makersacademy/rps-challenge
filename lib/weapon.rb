class Weapon

  WEAPONS = [:rock, :paper, :scissors]

  attr_reader :choice

  def initialize
    @choice = nil
  end

  def choose_rock
    @choice = WEAPONS[0]
  end

  def choose_paper
    @choice = WEAPONS[1]
  end

  def choose_scissors
    @choice = WEAPONS[2]
  end

  def random_weapon
    @choice = WEAPONS.sample
  end

end
