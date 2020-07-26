
def winner(player_1_name, player_1_choice, computer_choice)

  if player_1_choice == computer_choice
    return "nobody"
  elsif player_1_choice == "Rock" && computer_choice == "Paper"
    return "Computer"
  elsif player_1_choice == "Paper" && computer_choice == "Scissors"
    return "Computer"
  elsif player_1_choice == "Scissors" && computer_choice == "Rock"
    return "Computer"
  else
    return player_1_name
  end
end
