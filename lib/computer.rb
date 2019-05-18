require_relative 'game'

class Computer

  def play
    Game::WEAPONS.sample
  end

end
