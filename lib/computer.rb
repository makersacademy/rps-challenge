require_relative 'weapon'

class Computer

  def select_weapon
    @computer_choice = valid_weapons.sample
  end


end
