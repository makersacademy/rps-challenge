class Result

  P1_WINS = [["rock", "scissors"], ["scissors", "paper"], ["paper", "rock"]]
  P2_WINS = P1_WINS.map { |option| option.rotate }

  def initialize(player_1, player_2)
    @choices = [player_1.choice, player_2.choice]
    @p1_name = player_1.name
    @p2_name = player_2.name
  end

  def message
    if draw
      "Draw"
    elsif p1_wins
      "#{@p1_name} wins!"
    elsif p2_wins
      "#{@p2_name} wins!"
    end
  end

  private

  def draw
    @choices[0] == @choices[1]
  end

  def p1_wins
    P1_WINS.any? { |option| option == @choices }
  end

  def p2_wins
    P2_WINS.any? { |option| option == @choices }
  end

end
