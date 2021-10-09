class Hand

  attr_reader :h1, :h2

  def initialize(h1)
    @h1 = h1
    @h2 = nil
  end

   def second_hand(hand)
    @h2 = hand
  end
end