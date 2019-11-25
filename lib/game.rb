class Game
attr_reader :computer, :player

def initialize (player, computer)
  @player = player
  @computer = computer

end

def take_turn
  comp = ["rock", "paper", "scissors"].sample
  puts comp
end

def winner
  if (player == "rock" && computer == "scissors") || (player == "scissors" && computer == "paper") || (player == "paper" && computer == "rock")
        p "You won!"
        player_score += 1
      elsif (player == "rock" && computer == "rock") || (player == "paper" && computer == "paper") || (player == "scissors" && computer == "scissors")
        p "Draw! No point awarded"
      else computer_score += 1
        p "You lose."
    end
end



  end
