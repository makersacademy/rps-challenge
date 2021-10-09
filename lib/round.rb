class Round

  attr_accessor :hand

  def initialize(hand)
    @hand = hand
  end

  def self.create(hand)
    @round = Round.new(hand)
  end

  def self.instance
    @round
  end

  def in_progress?
    @hand.complete? ? true : false
  end
end