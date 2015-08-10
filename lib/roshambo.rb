
module Roshambo

  def first_move_winner? move1, move2
    move_one, move_two  = move1.downcase.to_sym, move2.downcase.to_sym
    return true if move_one == rock && move_two == scissors
    return true if move_one == scissors && move_two == paper
    return true if move_one == paper && move_two == rock
    false
  end

  def rock
    :rock
  end

  def scissors
    :scissors
  end

  def paper
    :paper
  end

  def random_move
    rand(100) < 33 ? rock : rand(100) > 66 ? scissors : paper
  end
end

