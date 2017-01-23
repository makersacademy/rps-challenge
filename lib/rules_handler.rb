module RulesHandler

  WINNING_MOVES = {
    [:rock, :scissors] => "crushes",
    [:rock, :lizard] => "crushes",
    [:lizard, :spock] => "poisons",
    [:lizard, :paper] => "eats",
    [:spock, :scissors] => "smashes",
    [:spock, :rock] => "vaporizes",
    [:scissors, :paper] => "cut",
    [:scissors, :lizard] => "decapitate",
    [:paper, :rock] => "covers",
    [:paper, :spock] => "disproves"
  }

  def self.decide_winner(player_1_move, player_2_move)
    if player_1_won?(player_1_move, player_2_move)
      winning_move = [:player_1, [player_1_move, player_2_move, get_battle_verb(player_1_move, player_2_move)]]
    else
      winning_move = [:player_2, [player_2_move, player_1_move, get_battle_verb(player_2_move, player_1_move)]]
    end
  end

  private

  def self.player_1_won?(player_1_move, player_2_move)
    WINNING_MOVES.has_key?([player_1_move, player_2_move])
  end

  def self.get_battle_verb(winner_move, loser_move)
    WINNING_MOVES[[winner_move, loser_move]]
  end

end
