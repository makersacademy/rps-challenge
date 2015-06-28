class Opponent
  WEAPONS = ['rock','paper','scissors']

  attr_reader :weapon

  def initialize
    @weapon = Opponent::WEAPONS.sample
  end

end