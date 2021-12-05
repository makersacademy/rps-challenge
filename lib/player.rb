class Player

  attr_reader :name, :hand

  def initialize(name = nil)
    @name = name
    @hand = nil
  end

  def change_name(name)
    @name = name
  end

  def thrown_hand(hand)
    @hand = hand
  end
end