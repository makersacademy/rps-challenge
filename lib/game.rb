#just rock paper scissors at the moment, but its expandable for spock lizard later.
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
    @weapon
  end

  def p2_pick 
    random_pick
  end
  
  def calculating
    if p1_pick == @options[0] && p2_pick == options[0]
      :draw
    elsif p1_pick == @options[1] && p2_pick == options[1]
      :draw
    elsif p1_pick == @options[2] && p2_pick == options[2]
      :draw
    elsif p1_pick == @options[0] && p2_pick == options[1]
      :player2
    elsif p1_pick == @options[0] && p2_pick == options[2]
      :player1
    elsif p1_pick == @options[1] && p2_pick == options[0]
      :player1
    elsif p1_pick == @options[1] && p2_pick == options[2]
      :player2
    elsif p1_pick == @options[2] && p2_pick == options[0]
      :player2
    elsif p1_pick == @options[2] && p2_pick == options[1]
      :player1
    end
  end
end
