class Computer
  attr_reader :weapon_cabinet, :name

  def initialize(cabinet = WeaponCabinet.new)
    @weapon_cabinet = cabinet
    @name = 'Zoe 5.1'
  end

  def pick_weapon
    @weapon_cabinet.release(random_weapon)
  end

  private

  def random_weapon
    ['rock', 'paper', 'scissors'].sample
  end
end
