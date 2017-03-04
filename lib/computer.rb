require_relative 'weapon'

class Computer

def select_weapon
  Weapon::WEAPONS.sample
end

end
