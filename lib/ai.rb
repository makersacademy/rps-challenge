# gives a random return of RPS's to compete with player
class AI

  WEAPONS = [:ROCK, :PAPER, :SCISSORS]

  def result
    WEAPONS.sample
  end

end
