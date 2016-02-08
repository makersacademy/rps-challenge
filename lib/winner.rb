class Winner

  OUTCOMES = {
    "Rock" => 1,
    "Paper" => 2,
    "Scissors" => 3,
    "Spock" => 4,
    "Lizard" => 5,
  }

  def initialize(player_weapon,game_weapon)
    @outcome = player_wins?(player_weapon,game_weapon)
  end

  def outcomes
    OUTCOMES.dup
  end

  def outcome
    @outcome
  end

  def player_wins?(player_weapon,game_weapon)
    return "A tie" if (outcomes[player_weapon] - outcomes[game_weapon]) % 5 == 0
    (outcomes[player_weapon] - outcomes[game_weapon]) % 5 == 1 ||
     (outcomes[player_weapon] - outcomes[game_weapon]) % 5 == 3
  end
end
