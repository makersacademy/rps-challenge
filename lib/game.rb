class Game
  def choose_move
    rand(3)
  end

  def translate_move(number)
    moves = %w(Rock Paper Scissors)
    moves[number]
  end

  def computer_move
    translate_move(choose_move)
  end
end
