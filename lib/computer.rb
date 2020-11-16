require_relative 'player'
# computer is a descendent of the Player class
class Computer < Player

  def initialize(move = nil)
    super(move)
  end
  
  # puts 'rock', 'paper' or 'scissors' randomly
  def random_move
    @move = ['rock', 'paper', 'scissors'].sample
  end

end
