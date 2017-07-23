class Player

  attr_reader :name, :weapons

  def initialize(name)
    @name = name
  end

  def player_weapons(weapons)
    @weapons = weapons
  end
end
