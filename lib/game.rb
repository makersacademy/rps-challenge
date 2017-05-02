class Game

  WEAPONS = ["Rock", "Paper", "Scissors", "Spock", "Lizard"]

  def random_weapon
    WEAPONS.sample
  end

  def check(weapon_1, weapon_2)

    return "DRAW!" if weapon_1 == weapon_2

    diff = WEAPONS.index(weapon_1) - WEAPONS.index(weapon_2)
    (diff % 5).odd? ? weapon_1 : weapon_2

  end

end
