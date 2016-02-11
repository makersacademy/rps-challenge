class Calculator

  RULES = { Rock: [:Scissors, :Lizard],
        Paper: [:Rock, :Spock],
        Scissors: [:Paper, :Lizard],
        Lizard: [:Paper, :Spock],
        Spock: [:Rock, :Scissors] }

  def calculate_winner
    return 'Nobody' if $computer_weapon == $player_weapon
    RULES[$player_weapon].include?($computer_weapon) ? $player_name.to_s : 'The computer'
  end

end
