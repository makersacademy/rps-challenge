class PlayerWeaponChoice

  def initialize
  @choice = nil
  end

  attr_reader :choice

  def choose(weapon)
    self.choice = weapon
  end

  private

  attr_writer :choice
end
