module Weapons

  WEAPONS = [:rock, :paper, :scissors]

  POSIBLE_WINS = {rock: [:scissors], paper: [:rock], scissors: [:paper]}

  def beats?(weapon1, weapon2)
    POSIBLE_WINS[weapon1].include? weapon2
  end

end
