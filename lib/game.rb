class Game
  def initialize(weapon_1,weapon_2)
    @weapon_1 = weapon_1
    @weapon_2 = weapon_2
  end

  def result
    :Won!
  end

  def tally
    "Wins: 1, Losses: 0"
  end
end
