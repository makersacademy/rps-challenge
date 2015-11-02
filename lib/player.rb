class Player
 
  attr_reader :name, :hand

  def initialize name
    @name = name
    @hand = nil
  end

  def weapon weapon
    @hand = weapon
  end

  def clear_hand
    @hand = nil
  end

end