class Weapons
  attr_reader :rack

  def initialize
    @rack = [:rock, :paper, :scissors]
  end

  def available?(weapon)
    @rack.include?(weapon)
  end

end
