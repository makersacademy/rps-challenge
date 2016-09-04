class Weapons

attr_reader :weapon

WEAPONS = ['rock', 'paper','scissors']

  def initialize
    @weapon = WEAPONS.sample
  end

end
