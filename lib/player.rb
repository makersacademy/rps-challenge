class Player
  attr_reader :weapon, :type
  attr_accessor :name

  def initialize(name)
    @name = name
    @weapon = nil
  end

  def weapon=(weapon)
    @weapon = weapon.downcase.to_sym
  end
end
