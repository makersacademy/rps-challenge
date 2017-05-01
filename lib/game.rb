class Game
  WEAPONS = ["Rock", "Paper", "Scissors"]

  def random_weapon
    WEAPONS.sample
  end

  def check(weapon_1, weapon_2)

    return "DRAW!" if weapon_1 == weapon_2

    until WEAPONS[WEAPONS.size / 2] == weapon_1 do
      WEAPONS.unshift(WEAPONS.pop)
    end

    WEAPONS.index(weapon_1) > WEAPONS.index(weapon_2) ? weapon_1 : weapon_2

  end

end
