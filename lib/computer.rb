require_relative 'game'

class Computer

  def choose_weapon
    Game::WEAPONS.sample
  end
  
end
