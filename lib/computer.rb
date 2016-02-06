require_relative 'game'

class Computer

  attr_reader :name, :move

  def initialize
    @name = pick_name
  end

  def pick_name
    names = %w(Boris Thor Alfredo Neumann Piirko Manuella Daniella Clementina Pia Elena)
    names.sample + " the Computer"
  end

  def make_move
    #fail ArgumentError, 'Should not receieve any args' if args
    @move = Game::MOVES.sample
  end

end
