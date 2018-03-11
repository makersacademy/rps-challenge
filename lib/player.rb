class Player

  attr_reader :name, :hand

  def initialize(name)
    @name = name
    @won = 0
    @played = 0
  end

  def receive_hand(hand)
    @hand = hand
  end

  def score
    "#{@won}/#{@played}"
  end

  def add_victory
    @won += 1
  end

  def reset
    @hand = nil
  end

  def add_played
    @played += 1
  end
end
