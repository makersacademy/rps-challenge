require 'weapon'

class Game

  WEAPONS = [Rock, Paper, Scissors]

  def self.choose_weapon
    @player_two_weapon = WEAPONS.sample

  end

  def self.resolve(player_1_weapon)
    @player_two_weapon.compare(player_1_weapon)
  end

end