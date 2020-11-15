require_relative 'player'

class Computer < Player #computer is a descendent of the Player class

  def initialize(move = nil)
    super( move )
  end

  def random_move # puts 'rock', 'paper' or 'scissors' randomly
    @move = ['rock', 'paper', 'scissors'].sample
    puts @move
  end

end
