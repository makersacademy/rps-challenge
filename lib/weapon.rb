=begin
class Weapon
  attr_reader :weapon

  def initialize(weapon = [rock, scissor, paper].sample)
    @weapon = weapon
  end

end
=end
