require_relative 'game'

class Computer

attr_reader :comp_choice

  def choose_weapon
    @comp_choice = Game::WEAPONS.sample
  end

end
