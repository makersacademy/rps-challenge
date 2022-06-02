class Player
  attr_reader :name
  attr_reader :weapon

  def initialize(name)
    @name = name
    @weapon = nil
  end

  def weapon=(weapon)
    @weapon = weapon.downcase.to_sym
  end
end
