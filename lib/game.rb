class Game 

  def result(player1, player2)
    if (player1 == 'ROCK' && player2 == 'PAPER') ||
      (player1 == 'PAPER' && player2 == 'SCISSORS') ||
      (player1 == 'SCISSORS' && player2 == 'ROCK')
    2 
    elsif (player1 == 'ROCK' && player2 == 'SCISSORS') ||
      (player1 == 'PAPER' && player2 == 'ROCK') ||
      (player1 == 'SCISSORS' && player2 == 'PAPER')
    1
    elsif (player1 == 'ROCK' && player2 == 'ROCK') ||
      (player1 == 'PAPER' && player2 == 'PAPER') ||
      (player1 == 'SCISSORS' && player2 == 'SCISSORS')
    0
    end 
  end
end 