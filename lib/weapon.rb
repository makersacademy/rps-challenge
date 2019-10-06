class Weapon

  attr_reader :weapons

  def initialize
    @weapons = [:rock, :paper, :scissors]
  end
  #
  # def choose_rock
  #   @choice = WEAPONS[0]
  # end
  #
  # def choose_paper
  #   @choice = WEAPONS[1]
  # end
  #
  # def choose_scissors
  #   @choice = WEAPONS[2]
  # end

  def random_weapon
    @weapons.sample
  end

end
