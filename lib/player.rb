class Player

  attr_reader :name
  attr_accessor :weapon, :outcome

  def initialize(name, weapon)
    @name = name
    @weapon = weapon
    @outcome = nil
  end

  def ai_choose_weapon
    random = Kernel.rand(0..2)
    @weapon = Rps_game::WEAPONS[random]
  end

end
