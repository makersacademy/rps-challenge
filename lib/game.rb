require_relative 'hand'

class Game

  def initialize(hand_1, hand_2)
    @hand_1 = hand_1
    @hand_2 = hand_2
  end

  attr_reader :hand_1, :hand_2

  RULES = {:rock => :scissors, :scissors => :paper, :paper => :rock}

  def tie?
    hand_1.shape == hand_2.shape
  end

  def winner
    RULES[hand_1.shape] == hand_2.shape ? hand_1 : hand_2
  end

  def loser
    winner == hand_2 ? hand_1 : hand_2
  end

end