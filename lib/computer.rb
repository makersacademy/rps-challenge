require_relative 'game.rb'

class Computer
  def choose
    Game::MOVES.sample
  end
end