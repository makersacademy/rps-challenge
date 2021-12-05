class Player

  attr_reader :name, :hand, :wins

  def initialize(name = nil)
    @name = name
    @hand = nil
    @wins = 0
  end

  def change_name(name)
    @name = name
  end

  def thrown_hand(hand)
    @hand = hand
  end

  def add_win
    @wins += 1
  end

  def reset_win
    @wins = 0
  end
end
