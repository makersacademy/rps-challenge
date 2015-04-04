class Game
  def choose_move
    rand(2)
  end

  def translate_move(number)
    moves = %w(Rock Paper Scissors)
    moves[number]
  end
end
