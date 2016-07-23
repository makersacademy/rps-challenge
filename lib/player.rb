class Player

attr_reader :weapon

def select_weapon(weapon)
  @weapon = weapon.to_sym
end

end
