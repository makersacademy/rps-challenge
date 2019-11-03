
class Player

  attr_reader :name, :player_hand

  def initialize(name)
    @name = name
  end

  def select_hand(hand)
    @player_hand = hand
  end
end
