class Computer
  attr_reader :weapon_cabinet
  
  def initialize(cabinet = WeaponCabinet.new)
    @weapon_cabinet = cabinet
  end
end
