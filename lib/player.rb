require_relative 'rules'

class Player

  attr_reader :name, :hand 

  def initialize(name)
    @name = name
  end

  def set_hand(hand)
    @hand = hand.to_sym
  end

end
