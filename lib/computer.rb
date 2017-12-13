class Computer
  attr_reader :weapon_cabinet, :name

  def initialize(cabinet = WeaponCabinet.new)
    @weapon_cabinet = cabinet
    @name = 'Zoe 5.1'
  end

  def pick_weapon
    @weapon_cabinet.release(weapon)
  end

  def self.random_weapon
    ['Rock', 'Paper', 'Scissors'].sample
  end

  private

  def weapon
    Computer.random_weapon
  end
end
