class Player
  attr_reader :name, :hand
  def initialize(name)
    @name = name
    @hand = nil
  end

  def give_hand(hand)
    @hand = hand.downcase.to_sym
  end
end

