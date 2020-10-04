require './lib/weapons/rock'
require './lib/weapons/scissors'
require './lib/weapons/paper'

module WeaponFactory
  WEAPON_CLASSES = {
    'Rock' => Rock,
    'Scissors' => Scissors,
    'Paper' => Paper
  }

  def self.create(weapon)
    klass_for(weapon).new
  end

  def self.klass_for(weapon)
    WEAPON_CLASSES[weapon]
  end
end
