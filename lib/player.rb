class Player

  attr_reader :name
  attr_accessor :weapon

  def initialize(name, weapon)
    @name = name
    @weapon = weapon
  end

  def ai_choose_weapon
    @weapon = Rps_game::WEAPONS[rand(0..2)]
  end

end
