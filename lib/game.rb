class Game

  def game_choices player_1_turn, player_2_turn

  player_1 = player_1_turn
  player_2 = player_2_turn

    if player_1_turn == :rock && player_2_turn == :scissors
      "rock smashes scissors!!! Player 1 wins"
    elsif
      player_1_turn == :paper && player_2_turn == :rock
        "paper covers rock!!! Player 1 wins"
    elsif
      player_1_turn == :scissors && player_2_turn == :paper
        "Scissors cuts paper!!! Player 1 wins"
    elsif
      player_1_turn == player_2_turn
       return "Game drawn"
    else
      "Player 2 wins"
    end
  end

end