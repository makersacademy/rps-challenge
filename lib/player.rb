class Player

  attr_reader :name, :hand
  HANDS = [:rock, :paper, :scissors]

  def initialize(name)
    @name = name
  end

  def choose(hand)
    @hand = hand.to_sym
  end

  def robot_choose
    @hand = HANDS.sample
  end

end
