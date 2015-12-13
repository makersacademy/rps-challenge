class Computer
  attr_reader :weapon

  def initialize
    @weapon = nil
  end

  def choose_weapon
    @weapon = [:rock, :paper, :scissors].sample
  end

end
