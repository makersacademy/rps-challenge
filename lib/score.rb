class Score
  attr_reader :player_one, :player_two

  def one_to_player
    @player_one = @player_one ? @player_one += 1 : 1
  end

  def one_to_opponent
    @player_two = @player_two ? @player_two += 1 : 1
  end

  def points_for_both
    one_to_player
    one_to_opponent
  end
end
