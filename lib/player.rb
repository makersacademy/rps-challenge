class Player
  attr_reader :weapon_cabinet, :name

  def initialize(name, cabinet = WeaponCabinet.new)
    @name = name
    @weapon_cabinet = cabinet
  end

  def pick(weapon)
    @weapon_cabinet.release(weapon)
  end
end
