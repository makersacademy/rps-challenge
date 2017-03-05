class Player

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def check_weapon(weapon)
    false
  end

end
