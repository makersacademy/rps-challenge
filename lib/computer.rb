require_relative 'game'

class Computer
  
  def weapon
    Game::WEAPONS.sample
  end
end

