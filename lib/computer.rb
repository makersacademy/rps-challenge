require 'game'

class Computer

  def move
    Game::WEAPON.sample
  end
end
