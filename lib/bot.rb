class Bot

  attr_reader :the_move
  
  MOVES = ['rock', 'paper', 'scissors']

  def move
    @the_move = MOVES.sample
  end
end