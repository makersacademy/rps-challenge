class Player
  attr_reader :name
  def initialize(name, wea= nil)
    @weapon = wea
    @name = name
  end

  def choice(hand)
    @weapon = Weapon.new(hand)
  end

end
