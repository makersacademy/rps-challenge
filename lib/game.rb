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
    #wins? ? (@result = :win ) : (@result = :lose )
    if wins? 
      @result = :win
    elsif draws?
      @result = :draw
    else
      @result = :lose
    end
  end

  def wins?
    RULES[@player.move] == @computer.move
  end

  def draws?
    @player.move == @computer.move
  end

end
