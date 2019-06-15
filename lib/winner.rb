class Winner
  WINS = {:rock => :scissors, :paper => :rock, :scissors => :paper}

  def who_wins(player1, player2)
    if move_to_sym(player1) == move_to_sym(player2)
      return 'Tie'
    elsif WINS[move_to_sym(player1)] == move_to_sym(player2)
      return player1.name
    else
      return player2.name
    end
  end

  private

  def move_to_sym(player)
    player.move.downcase.to_sym
  end



end