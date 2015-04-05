module RpsDroid
  def choose_move
    rand(3)
  end

  def translate_move(number)
    moves = %w(Rock Paper Scissors)
    moves[number]
  end

  def make_move
    translate_move(choose_move)
  end
end
