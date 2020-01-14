class Game
def start_game
  choices = ["rock", "paper", "scissors"]
  result = (choices.random() * 3)
  if (p1 == pc)
    puts "It's a draw"
  elsif (p1 == "rock" && pc == "scissors")
    puts "Player 1 wins"
  elsif (p1 == "rock" && pc == "paper")
    puts "Player 2 wins"
  elsif (p1 == "paper" && pc == "scissors")
    puts "Player 2 wins"
  elsif (p1 == "paper" && pc == "rock")
    puts "Player 1 wins"
  elsif (p1 == "scissors" && pc == "rock")
    puts "Player 2 wins"
  elsif (p1 == "scissors" && pc == "paper")
    puts "Player 1 wins"
  else
    puts "Computer Wins"
  end
  end
end
