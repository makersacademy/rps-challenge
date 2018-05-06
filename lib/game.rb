
class Game

  attr_reader :player1, :computer

  WEAPONS = [:rock, :paper, :scissors]
  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }
  def initialize(player1, computer)
    @player1 = player1
    @computer = computer
  end

  def results
    return draw if player1.weapon==computer.weapon
    RULES[player1.weapon]==(computer.weapon)? win : lose

  end

  def draw
    return "It's a draw"
  end

  def win
    return "YOU WIN!"
  end

  def lose
    return "Computer WINS!"
  end
end
