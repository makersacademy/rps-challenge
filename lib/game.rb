require 'weapon'

class Game

  WEAPONS = [Rock, Paper, Scissors]

  def self.choose_weapon
    WEAPONS.sample
  end

  def self.resolve(player_1_weapon)
    choose_weapon.compare(player_1_weapon)
  end

end