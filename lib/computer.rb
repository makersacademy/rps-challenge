require_relative 'game'

class Computer
  def selected
    Game::MATCHUPS.keys.sample
  end
end
