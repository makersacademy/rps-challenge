class Game
  MOVE_SELECTION = ['Scissors', 'Rock', 'Paper']

  def computer_move
    MOVE_SELECTION[Kernel.rand(2)]
  end

  def winner(player, computer)
    return 'Draw!' if player == computer
    return 'Player wins!' if player == 'Rock' && computer == 'Scissors'
    return 'Computer wins!' if player == 'Rock' && computer == 'Paper'
    return 'Player wins!' if player == 'Scissors' && computer == 'Paper'
    return 'Computer wins!' if player == 'Scissors' && computer == 'Rock'
    return 'Player wins!' if player == 'Paper' && computer == 'Rock'
    return 'Computer wins!' if player == 'Paper' && computer == 'Scissors'
  end
end