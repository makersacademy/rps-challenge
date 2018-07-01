require_relative 'game'
require_relative 'player'

class Opponent

  attr_reader :opponent_option

  def option
    @opponent_option = Game::OPTIONS.sample
  end
end
