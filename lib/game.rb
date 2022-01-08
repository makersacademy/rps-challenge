class Game

  def initialize
    @options = ['Rock', 'Paper', 'Scissor']
    @computer_move
  end 

  def computer_move
    @options.sample
  end 

  def result(player, computer)
    return "You Win" if player == 'Rock' && computer == 'Scissor'
    return "You Win" if player == 'Scissor' && computer == 'Paper'
    return "You Win" if player == 'Paper' && computer == 'Rock'
    return "It's a DRAW!" if player == computer
    "You Lose"
  end
    
end 
