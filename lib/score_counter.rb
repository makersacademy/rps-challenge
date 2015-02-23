class ScoreCounter

  attr_reader :player_count

  def initialize
    @player_count = 0
  end

  def change_score
    @player_count += 1
  end

end
