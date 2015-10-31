class Computer
  HANDS = [:rock, :paper, :scissors]
  attr_reader :name, :hand
  def initialize
    @name = "Computer"
    @hand = nil
  end

  def set_hand(hand = nil)
    @hand = HANDS.sample
  end
end

