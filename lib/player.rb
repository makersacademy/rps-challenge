class Player
  attr_reader :name, :hand

  def initialize(name)
    @name = name
  end

  def round_hand(option)
    @hand = option
  end
end
