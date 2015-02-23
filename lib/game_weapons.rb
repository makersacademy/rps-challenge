class GameWeapons

  attr_reader :weapons

  def initialize
    @weapons = [:rock, :paper, :scissors]
  end


  def random_weapon
    weapons.sample
  end

  def select_weapon(weapon)
    if weapons.include?(weapon)
      return weapon
    else
      false
    end
  end

end