class Game

  attr_reader :player, :weapons

  def initialize(player)
    @player = player
    @weapons = ['Rock', 'Paper', 'Scissors']
  end

  def random_weapon_selection
    @weapons.sample
  end

end
