class Result
  RELATIONSHIPS = {
    paper: {beats: :rock, loses_to: :scissors},
    rock: {beats: :scissors, loses_to: :paper},
    scissors: {beats: :paper, loses_to: :rock}
  }
  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def self.run(hand1, hand2)
    Result.new(hand1, hand2).run
  end

  def run
    return :player_1 if RELATIONSHIPS[@hand1][:beats] == @hand2
    return :player_2 if RELATIONSHIPS[@hand2][:beats] == @hand1
    :draw
  end

end