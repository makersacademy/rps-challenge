class Player

  attr_reader :weapon, :name

  def initialize(name)
    @name = name
  end

  def weapon=(weapon)
    @weapon = weapon.downcase.to_sym
  end

  def self.find(player)
    player
  end

end
