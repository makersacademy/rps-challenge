require './lib/weapon'

class Computer

  attr_reader :computer_choice

  def random_rps
    Weapon::WEAPONS.sample
  end

end
