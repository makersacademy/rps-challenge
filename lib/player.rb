class Player
  attr_reader :name

  def initialize(user_name)
    @name = user_name
  end

  def choose(weapon)
    return weapon
  end

end
