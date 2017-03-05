class Player

  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def choose(hand)
    @choice = hand.to_sym
  end

end
