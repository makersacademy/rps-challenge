class Game
  def computer_move
    ["Rock", "Paper", "Scissors"].sample
  end

  def who_wins(player, computer)
    winner = ""
    if player == computer
      puts "You tied!"
      winner = "none"
    elsif player == "Rock" && computer == "Scissors"
      puts "You win!"
      winner = "player1"
    elsif player == "Paper" && computer == "Rock"
      puts "You win!"
      winner = "player1"
    elsif player == "Scissors" && computer == "Paper"
      puts "You win!"
      winner = "player1"
    else
        puts "You lose!"
        winner = "computer"
    end
    winner_message(winner)
  end

  def winner_message(winner)
    case winner
    when "player1"
      "You win!"
    when "computer"
      "The computer wins"
    else
      "It's a draw"
    end
  end



end
