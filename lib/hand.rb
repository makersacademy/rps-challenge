class Hand

  attr_reader :worse_hands, :name

  def initialize(name, worse_hand_1, worse_hand_2=nil)
    @worse_hands = [worse_hand_1, worse_hand_2]
    @name = name
  end

  def better?(other_hand)
    worse_hands.include?(other_hand.name)
  end

end
