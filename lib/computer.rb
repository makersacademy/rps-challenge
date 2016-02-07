class Computer

  attr_reader :weapons

  WEAPONS = [:rock, :paper, :scissors]

  def initialize
    @weapons = WEAPONS.sample
  end

end
