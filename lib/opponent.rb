class Opponent

  attr_reader :weapons, :choice, :name

  def initialize
    @name    = "computer opponent"
    @weapons = [:rock, :paper, :scissors]
  end

  def choose_random_weapon
    @choice = @weapons.sample
  end

end
