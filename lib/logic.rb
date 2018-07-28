
  p1 = $player_1_choice
  p2 = $player_2_choice  
  $winner = 0

  def self.find_winner 
  if p1 == p2 then winner = "it's a draw"
  elsif p1 == "rock"
    p2 == "scissors" ? 
      winner = "Player 1 wins" : winner = "Player 2 wins"
  elsif p1 == "paper"
    p2 == "rock" ? winner = "Player 1 wins" : winner = "Player 2 wins"
  elsif p1 == "scissors"
    p2 == "paper" ? winner = "Player 1 wins" : winner = "Player 2 wins"
    end
  end