class Winner
  def initialize(player_choice,game_choice)
    @outcomes = {
      "Rock" => 1,
      "Paper" => 2,
      "Scissors" => 3,
      "Spock" => 4,
      "Lizard" => 5,
    }
    @outcome = player_wins?(player_choice,game_choice)
  end

  def outcomes
    @outcomes.dup
  end

  def outcome
    @outcome
  end

  def player_wins?(player_choice,game_choice)
    (outcomes[player_choice] - outcomes[game_choice]) % 5 == 1 || (outcomes[player_choice] - outcomes[game_choice]) % 5 == 3
  end
end
