class Game

  WEAPONS = [:rock, :paper, :scissors]

  RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }

  attr_reader :player1, :player2, :player1_score, :player2_score, :rounds

  def initialize(player1, player2 = Computer.new)
    @player1 = player1
    @player2 = player2
    @player1_score = 0
    @player2_score = 0
    @rounds = 0
  end

  def result
    @rounds += 1
    return 'draw' if @player1.weapon == @player2.weapon
    if RULES[@player1.weapon] == @player2.weapon
      @player1_score += 1
      @player1
    else
      @player2_score += 1
      @player2
    end
  end

  def reset_game
    @rounds = 0
    @player1_score = 0
    @player2_score = 0
  end

end
