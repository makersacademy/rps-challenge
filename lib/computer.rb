
require_relative 'player'

class Computer

attr_reader :weapon

 def weapon_of_choice
   @weapon = Player::WEAPONS.sample
 end

end
