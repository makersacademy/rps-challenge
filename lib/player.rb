class Player
  attr_reader :name, :hand

  def initialize(name = '')
    @name = name == '' ? 'Guest' : name.capitalize
    @hand = nil
  end

  def play_hand(hand)
    @hand = hand.capitalize!
  end
end
