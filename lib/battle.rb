class Battle
  MOVES = {
    :rock => {
      :scissors => :player1_win,
      :paper => :player2_win,
      :rock => :draw,
      :lizard => :player1_win,
      :spock => :player2_win
    },
    :paper => {
      :rock => :player1_win,
      :scissors => :player2_win,
      :paper => :draw,
      :lizard => :player2_win,
      :spock => :player1_win
    },
    :scissors => {
      :paper => :player1_win,
      :rock => :player2_win,
      :scissors => :draw,
      :lizard => :player1_win,
      :spock => :player2_win
    },
    :lizard => {
      :paper => :player1_win,
      :rock => :player2_win,
      :scissors => :player2_win,
      :lizard => :draw,
      :spock => :player1_win
    },
    :spock => {
      :paper => :player2_win,
      :rock => :player1_win,
      :scissors => :player1_win,
      :lizard => :player2_win,
      :spock => :draw
    }
  }

  def multiplayer_outcome(player1, player2)
    outcome(player1.move, player2.move)
  end

  def outcome(player1_move, player2_move)
    MOVES[player1_move][player2_move]
  end
end
