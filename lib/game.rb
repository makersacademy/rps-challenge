class Game

  @@weapons = ["Rock","Paper","Scissors"]

  def random_weapon
    @@weapons.sample
  end

  def check(weapon_1,weapon_2)
    return "DRAW!" if weapon_1 == weapon_2
    until @@weapons[@@weapons.size/2] == weapon_1 do
      @@weapons.unshift(@@weapons.pop)
    end
    @@weapons.index(weapon_1) > @@weapons.index(weapon_2) ? weapon_1 : weapon_2
  end

end
