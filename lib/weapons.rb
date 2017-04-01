class Weapon

  attr_reader :better_weapon

 def make_weaker_than(better_weapon)
   @better_weapon = better_weapon
 end

 def loses_to?(other_weapon)
   other_weapon == better_weapon
 end

end
