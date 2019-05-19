require_relative 'game'

class Computer

  def play
    Game::THROWS.sample
  end

end
