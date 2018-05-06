class Computer
  attr_reader :name, :weapon

  def initialize
    @name = 'RNG God'
  end

  def weapon_choice(*)
    @weapon = [:rock, :paper, :scissors].sample
  end
end
