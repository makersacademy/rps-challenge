class Player

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
    @weapon = nil
  end

  def player_choice(weapon)
    @weapon = weapon
  end

end
