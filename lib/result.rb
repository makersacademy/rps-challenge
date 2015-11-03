class Result
  RELATIONSHIPS = {
    paper: {beats: :rock},
    rock: {beats: :scissors},
    scissors: {beats: :paper}
  }
  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def self.run(hand1, hand2)
    Result.new(hand1, hand2).run
  end

  def run
    player1? or player2? or :draw
  end

private
  def player1?
    :player_1 if RELATIONSHIPS[@hand1][:beats] == @hand2
  end

  def player2?
    :player_2 if RELATIONSHIPS[@hand2][:beats] == @hand1
  end
end