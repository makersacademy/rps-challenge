class Player

  attr_reader :name, :hand

  def initialize(name)
    @name = name
  end

  def set_hand(hand)
    @hand = hand
  end

  def auto
    @hand = ['rock','paper','scissors'].sample
  end

end
