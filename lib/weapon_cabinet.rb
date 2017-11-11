class WeaponCabinet
  attr_reader :arsenal
  
  def initialize(weapon_class = Weapon)
    @arsenal = [
      weapon_class.new(:Rock),
      weapon_class.new(:Paper),
      weapon_class.new(:Scissors)
    ]
  end
end
