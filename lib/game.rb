class Game
 
  def result(player, computer)
    return 'You Win!' if player == 'Rock' && computer == 'Scissors'
    return 'You Win!' if player == 'Paper' && computer == 'Rock'
    return 'You Win!' if player == 'Scissors' && computer == 'Paper'
    return "It's a Draw!" if player == computer
    'You Lose!'
  end
    
end