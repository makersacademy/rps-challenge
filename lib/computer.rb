require './lib/game'

class Computer

  def computer_choice
    Game::OPTIONS.sample
  end
end
