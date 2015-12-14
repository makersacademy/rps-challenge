class Weapon
  attr_reader :type

  WEAPONS = [:rock, :paper, :scissors]

  def initialize(type)
    @type = type
  end
end
