class Player

  attr_reader :hand

  def initialize(hand)
    @hand = hand.to_sym
  end

end
