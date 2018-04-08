class Computer

  WEAPONS = [ :rock, :paper, :scissors ]

  attr_reader :weapon

  def initialize
    @weapon = WEAPONS.sample
  end

end
