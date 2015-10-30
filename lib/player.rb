class Player
  attr_reader :name, :hand
  def initialize(name)
    @name = name
    @hand = nil
  end

  def set_hand(hand)
    @hand = hand
  end
end

