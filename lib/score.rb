class Score
  attr_reader :player, :opponent

  def one_to_player
    @player = @player ? @player += 1 : 1
  end

  def one_to_opponent
    @opponent = @opponent ? @opponent += 1 : 1
  end

  def points_for_both
    one_to_player
    one_to_opponent
  end

  def reset
    @player = 0
    @opponent = 0
  end
end
