require_relative 'weapon'

class Bot

  attr_reader :weapon

  def play
    @weapon = Weapon::WEAPONS.sample
  end

end
