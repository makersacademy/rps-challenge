require_relative './game.rb'

class Computer
  def weapon
    Game::WEAPONS.sample
  end
end
