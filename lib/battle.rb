class Battle
  MOVES = {
    :rock => {
      :scissors => :player1_win,
      :paper => :player2_win,
      :rock => :draw
    },
    :paper => {
      :rock => :player1_win,
      :scissors => :player2_win,
      :paper => :draw
    },
    :scissors => {
      :paper => :player1_win,
      :rock => :player2_win,
      :scissors => :draw
   }
  }

  def multiplayer_outcome(player1, player2)
    puts "#{player1.move} player1, #{player2.move} player2"
    outcome(player1.move, player2.move)
  end

  def outcome(player1_move, player2_move)
    MOVES[player1_move][player2_move]
  end
end
