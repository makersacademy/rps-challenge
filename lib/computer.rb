require './lib/game'

class Computer

  attr_reader :name, :move

  def initialize(name = 'Robot')
    @name = name
    @move = Game::MOVES.sample
  end

end
