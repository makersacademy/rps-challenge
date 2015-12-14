class PvP

  attr_reader :player_1, :player_2, :p1_win, :draw, :p1_score, :p2_score

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @p1_win = false
    @draw = false
    @p1_score = 0
    @p2_score = 0
  end

# 1 = Rock
# 2 = Paper
# 3 = Scissors

  def evaluate(p1_choice, p2_choice)
    p1 = p1_choice.to_i
    p2 = p2_choice.to_i
    if p1 == 1
      if p2 == 1
        tie
      elsif p2 == 3
        p1_w
      else
        p2_w
      end

    elsif p1 == 2
      if p2 == 1
        p1_w
      elsif p2 == 2
        tie
      else
        p2_w
      end
    elsif p1 == 3
      if p2 == 2
        p1_w
      elsif p2 == 3
        tie
      else
        p2_w
      end
    end

  end

  def reset
    @draw = false
  end

private
  def tie
    @draw = true
    @p1_score += 1
    @p2_score += 1
  end

  def p1_w
    @p1_win = true
    @p1_score += 1
  end

  def p2_w
    @p1_win = false
    @p2_score += 1
  end
end
