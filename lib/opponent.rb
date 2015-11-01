class Opponent
  HANDS = [:paper, :rock, :scissors]
  def choose_hand
    HANDS[rand(2)]
  end
end