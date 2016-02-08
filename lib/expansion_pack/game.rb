require_relative 'turn'

class Game

  def initialize(p1_score, p2_score)
    @p1_score = p1_score
    @p2_score = p2_score
  end

  def result
    if turn.win?
      :win
    elsif draw?
      :draw_play_again
    else
      :lose
    end
  end
end
