class Object
    WEAPON = [:rock, :paper, :scissors]
    attr_reader :weapon
  def initialize
    @weapon = WEAPON.sample
  end
end
