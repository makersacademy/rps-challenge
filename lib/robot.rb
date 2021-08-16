class Robot 
  attr_reader :name, :random_move

  def initialize(name = 'Elvis', random_move = MOVES.sample)
    @name = name
    @random_move = random_move
  end

  MOVES = ['rock', 'paper', 'scissors']
  
end
