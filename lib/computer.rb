require_relative 'game'

class Computer
  def weapon
    Game::WEAPONS.sample
    # syntax for referring to a constant in another class
  end
end
