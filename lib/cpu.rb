require_relative 'weapon'

class CPU

  attr_reader :weapon

  def initialize
    @weapon = Weapon.new(["Rock", "Paper", "Scissors"].sample)
  end

end
