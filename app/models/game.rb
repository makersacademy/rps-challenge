class Game 

  attr_accessor :player1, :player2

  def determine_winner
    selections_equal? ? :draw : check_selections 
  end

  def selections_equal?
    player1.selection == player2.selection
  end

  def check_selections
    winning_moves = {:rock => :scissors, :paper => :rock, :scissors => :paper}
    player2.selection == winning_moves[player1.selection] ? player1 : player2
  end  
end  


