class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def result(weapon1, weapon2)
    determine_outcome(weapon1, weapon2)
  end

  private
  def determine_outcome(weapon1, weapon2)
    case weapon1 <=> weapon2
    when 1 then :win
    when -1 then :lose
    else :draw
    end
  end
end
