class Opponent

  attr_reader :weapons

  def initialize
    @weapons = [:rock, :paper, :scissors]
  end

  def choose_random_weapon
    @weapons.sample
  end

end
