require_relative 'game'

class RandomMove

  MOVES = ['rock', 'paper', 'scissors']
  MOVES_SPOCK = ['rock', 'paper', 'scissors', 'lizard', 'spock']

  def initialize(mode)
    @mode = mode
  end

  def move()
    return MOVES.sample if @mode == 'standard'
    return MOVES_SPOCK.sample if @mode == 'spock'
  end

end
