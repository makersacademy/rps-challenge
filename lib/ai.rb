class Ai

  attr_accessor :weapon

  def initialize
    @weapon = rand_weapon
  end

  def rand_weapon
    @weapon = RPS::WEAPONS.sample
  end

end
