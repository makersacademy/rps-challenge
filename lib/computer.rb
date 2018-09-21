require './lib/game'
class Computer

  def weapon
      Game::WEAPONS.sample
  end

end
