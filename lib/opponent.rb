class Opponent

  attr_reader :opponent_move

  def create_opponent
    @opponent = Opponent.new
  end

  def move
    [:Rock, :Paper, :Scissors].sample
  end
end
