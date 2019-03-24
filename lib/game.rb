class Game 
  attr_reader :player1, :player2

  def initialize(player1, player2 = "RPSpecalist Machine")
    @player1 = player1
    @player2 = player2
    @options = ['rock', 'paper', 'scissors']
  end

  def random_pick
    @options.sample
  end

  def p1_pick
  end
  
  def calculating_result
    if p1_pick == random_pick
      'Draw!'
    end
  end
end
