class Player

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def set_weapon=(weapon)
    @weapon = weapon

  end

end
