class Computer

attr_reader :weapon

WEAPONS = [:rock, :paper, :scissors]

def weapon_choice
  @weapon = WEAPONS.sample
end

end
