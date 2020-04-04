require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :result

  RULES = { rock: :scissors,
    paper: :rock,
    scissors: :paper }

  def initialize(player, computer)
    @player = player
    @computer = computer
    #beats ? (@result = :win ) : (@result = :lose )
    p @computer.move
    if beats == true
      @result = :win 
    else
      @result = :lose
    end
  end

  def beats
    if RULES[@player.move] == @computer.move
      true
    else
      false
    end
  end

end
