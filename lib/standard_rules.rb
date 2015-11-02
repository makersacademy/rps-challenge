class StandardRules
  RULES = {
    # This    | Loses to this
    rock:     :paper,
    paper:    :scissors,
    scissors: :rock
  }
  HANDS = [:rock, :paper, :scissors]

  def initialize
    @hands = HANDS
  end

  def hands
    @hands.dup
  end
  def play(hand1, hand2)
    return :draw if hand1 == hand2
    return :win if rules(hand2) == hand1
    return :lose if rules(hand1) == hand2
  end

  private
  def rules(hand)
    RULES[hand]
  end
end
