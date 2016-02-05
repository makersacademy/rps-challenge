
class Computer

  attr_reader :game

  def move
    Game::MOVES.sample
  end
end
