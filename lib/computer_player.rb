require_relative 'player'
require_relative 'game'

class ComputerPlayer < Player

  def choose
    Game::CHOICES.sample
  end
end
