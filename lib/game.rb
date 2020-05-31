class Game
  attr_reader :player, :random_move
  def initialize(player)
    @player = player
    @random_move = nil
  end

  # this might seem weird but it was the only way for me to run a complete test
  def random(moves = ['paper', 'scissors', 'rock'])
    moves.sample
  end

  def make_random_move
    @random_move = random
  end
end
