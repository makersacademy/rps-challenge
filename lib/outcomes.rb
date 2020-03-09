class Calculator

    RULES = { Rock: [:Scissors],
          Paper: [:Rock],
          Scissors: [:Paper],
        }
  
    def calculate_winner
      return 'NO WINNER its a Draw' if $computer_choice == $player_choice
      RULES[$player_choice].include?($computer_choice) ? "#{$player_name.to_s} WINS" : "The cpu WINS"
    end
  
  end