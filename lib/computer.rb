class Computer 
  attr_reader :random_move

  def initialize
    @random_move = MOVES.sample
  end

  private

  MOVES = ['rock', 'paper', 'scissors']
  
end
