class Opponent

  HANDS = [:paper, :rock, :scissors]

  def choose_hand
    HANDS[rand(3)]
  end

end