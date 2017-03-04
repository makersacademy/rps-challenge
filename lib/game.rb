class Game

  attr_reader :weapons

  def initialize
    @weapons = ['Rock', 'Paper', 'Scissors']
  end

  def random_weapon_selection
    @weapons.sample
  end

end
