
module Roshambo

  def computer_beats_player? move
    return true if move.to_sym == rock && random_move == scissors
    return true if move.to_sym == scissors && random_move == paper
    return true if move.to_sym == paper && random_move == rock
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

