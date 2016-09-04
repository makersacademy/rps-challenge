class Weapon

WEAPONS = [:rock, :paper, :scissors]

attr_reader :type

  def initialize(type)
    @type = type
  end

  def valid?
    WEAPONS.include?(@type)
  end

end
