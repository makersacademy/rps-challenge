class Game

  WEAPONS = [:rock, :paper, :scissors]

  RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }

  attr_reader :winner, :player1, :player2

  def initialize(player1, player2 = Computer.new)
    @player1 = player1
    @player2 = player2
    @winner = nil
  end

  def result
    return 'draw' if @player1.weapon == @player2.weapon
    RULES[@player1.weapon] == @player2.weapon ? @player1 : @player2
  end

end
