module RulesHandler

  WINNING_MOVES = [
    [:rock, :scissors, "crushes"],
    [:rock, :lizard, "crushes"],
    [:lizard, :spock, "poisons"],
    [:lizard, :paper, "eats"],
    [:spock, :scissors, "smashes"],
    [:spock, :rock, "vaporizes"],
    [:scissors, :paper, "cuts"],
    [:scissors, :lizard, "decapitates"],
    [:paper, :rock, "covers"],
    [:paper, :spock, "disproves"]
  ]

  def self.decide_winner(player_1_move, player_2_move)
    winning_move = [:player_1, WINNING_MOVES.map { |item| item[0] == player_1_move && item[1] == player_2_move ? item : [] }.flatten]
    winning_move = [:player_2, WINNING_MOVES.map { |item| item[0] == player_2_move && item[1] == player_1_move ? item : [] }.flatten] if winning_move[1] == []
    winning_move
  end

end
