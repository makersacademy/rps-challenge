class Player
  attr_reader :name, :weapon, :type

  def initialize(name)
    @name = name
    @weapon = nil
    @type = :human
  end

  def weapon=(weapon)
    @weapon = weapon.downcase.to_sym
  end
end
