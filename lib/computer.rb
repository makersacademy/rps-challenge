class Computer
  attr_reader :name, :weapon

  def initialize
    @name = 'RNG God'
  end

  def weapon
    @weapon = [:rock, :paper, :scissors].sample
  end
end