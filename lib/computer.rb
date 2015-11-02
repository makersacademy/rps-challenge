require_relative 'game'

class Computer

  def self.weapon
    Game::WEAPONS.sample
  end

end
