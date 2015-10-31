class Player
  attr_reader :name, :hand
  def initialize(name)
    @name = name
    @hand = nil
  end

  def hand=(hand)
    @hand = hand
  end
end

