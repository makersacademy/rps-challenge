class Game 

  attr_accessor :computer, :player

  def determine_winner
    selections_equal? ? :draw : check_selections 
  end

  def selections_equal?
    player.selection == computer.selection
  end

  def check_selections
    winning_moves={:rock => :scissors, :paper => :rock, :scissors => :paper}
    computer.selection == winning_moves[player.selection] ? player : computer
  end  
end  


