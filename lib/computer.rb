class Computer

  attr_reader :name

  def initialize
    @name = 'Computer'
  end

  def weapon_choice
    Weapon::WEAPONS.sample
  end
end
