class Player

  attr_reader :name, :hands, :hand

  def initialize(name)
    @name = name
    @hands = ['rock','paper','scissors']
  end

  def set_hand(hand)
    @hand = hand
  end

end
