class Two_player

  def winner_2
    if $player_1_choice == $player_2_choice
      return "Its a draw"
    elsif $player_1_choice == "Rock" && $player_2_choice == "Scissors"
      $wins_p1 += 1
      return "#{$player_1_name} wins"
    elsif $player_1_choice == "Rock" && $player_2_choice == "Lizard"
      $wins_p1 += 1
      return "#{$player_1_name} wins"
    elsif $player_1_choice == "Paper" && $player_2_choice == "Rock"
      $wins_p1 += 1
      return "#{$player_1_name} wins"
    elsif $player_1_choice == "Paper" && $player_2_choice == "Spock"
      $wins_p1 += 1
      return "#{$player_1_name} wins"
    elsif $player_1_choice == "Scissors" && $player_2_choice == "Paper"
      $wins_p1 += 1
      return "#{$player_1_name} wins"
    elsif $player_1_choice == "Scissors" && $player_2_choice == "Lizard"
      $wins_p1 += 1
      return "#{$player_1_name} wins"
    elsif $player_1_choice == "Spock" && $player_2_choice == "Scissors"
      $wins_p1 += 1
      return "#{$player_1_name} wins"
    elsif $player_1_choice == "Spock" && $player_2_choice == "Rock"
      $wins_p1 += 1
      return "#{$player_1_name} wins"
    elsif $player_1_choice == "Lizard" && $player_2_choice == "Spock"
      $wins_p1 += 1
      return "#{$player_1_name} wins"
    elsif $player_1_choice == "Lizard" && $player_2_choice == "Paper"
      $wins_p1 += 1
      return "#{$player_1_name} wins"
    else
      $wins_p2 += 1
      return "#{$player_2_name} wins"
    end
  end

end
