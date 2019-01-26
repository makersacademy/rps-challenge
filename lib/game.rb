class Game

  WEAPONS = [:Rock, :Paper, :Scissors]

  def self.choose_weapon
    WEAPONS.sample
  end

end