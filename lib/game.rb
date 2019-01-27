class Game
  WEAPONS = [:rock, :paper, :scissors]

  def self.choose_weapon
    WEAPONS.sample
  end
end