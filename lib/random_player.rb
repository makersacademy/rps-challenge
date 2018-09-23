require_relative 'game'

# This class just picks a move randomly from the available moves in RPSLS.
class RandomPlayer
  attr_reader :name, :move

  def initialize
    @name = "RPSLSbot"
    @move = nil
  end

  def choose_move(_move = nil)
    Game::POSSIBLE_MOVES[rand(5)]
  end
end
