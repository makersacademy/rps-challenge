class Battle
  MOVES = {
    :rock => {
      :scissors => :win,
      :paper => :lose,
      :rock => :draw
    },
    :paper => {
      :rock => :win,
      :scissors => :lose,
      :paper => :draw,
    },
    :scissors => {
      :paper => :win,
      :rock => :lose,
      :scissors => :draw
   }
  }

  def outcome(player1_move, player2_move)
    MOVES[player1_move][player2_move]
  end
end