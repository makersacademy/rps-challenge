class Game

  WEAPONS = [:rock, :paper, :scissors]
  WINNERS = { rock: :scissors, paper: :rock, scissors: :paper }

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
