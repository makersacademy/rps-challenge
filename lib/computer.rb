
class Computer

  attr_reader :game

  MOVES= ['ROCK', 'PAPER', 'SCISSORS']

  def move
    MOVES.sample
  end
end
