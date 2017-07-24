class Scorer

  attr_reader :score

  def initialize
    @player_1_score = 0
    @player_2_score = 0
    set_score
  end

  def player_1_win
    @player_1_score += 1
    set_score
  end

  def player_2_win
    @player_2_score += 1
    set_score
  end

private
  def set_score
    @score = [@player_1_score, @player_2_score]
  end
end
