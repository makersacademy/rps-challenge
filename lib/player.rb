
class Player
  R = 0
  P = 1
  S = 2

  def random
    [R,P,S].sample
  end

  def paper
    P
  end

  def rock
    R
  end

  def scissor
    S
  end

end
