class Player
  attr_reader :name, :weapon

  def initialize(user_name)
    @name = user_name
  end

  def choose(weapon)
    @weapon = weapon
  end

end
