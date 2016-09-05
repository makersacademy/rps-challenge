
class Player
  R = 0
  P = 1
  S = 2
  attr_reader :name

  def initialize(name = "computer")
    @name = name
  end

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
