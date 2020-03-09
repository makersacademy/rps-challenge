class Calculator

    RULES = { Rock: [:Scissors],
          Paper: [:Rock],
          Scissors: [:Paper],
          Lizard: [:Paper],
          Spock: [:Rock] }
  
    def calculate_winner
      return 'Draw' if $computer_choice == $player_choice
      RULES[$player_choice].include?($computer_choice) ? $player_name.to_s : 'The cpu'
    end
  
  end