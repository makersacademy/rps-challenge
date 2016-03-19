class Game

  WEAPONS = [:Rock, :Paper, :Scissors]
  WINNERS = { Rock: :Scissors, Paper: :Rock, Scissors: :Paper }

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def result
    return :draw if @player1.weapon == @player2.weapon
    return :win if WINNERS[@player1.weapon] == @player2.weapon
    :loss
  end

end
