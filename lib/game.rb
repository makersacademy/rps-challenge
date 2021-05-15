class Game
  MOVE_SELECTION = ['Scissors', 'Rock', 'Paper']

  def computer_move
    MOVE_SELECTION[Kernel.rand(2)]
  end
end