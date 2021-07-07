class Player
  HANDS = ["rock", "paper", "scissors"]
  attr_reader :name, :points, :hand
  
  def initialize(name)
    @name = name
    @points = 0
    @hand = ""
  end

  def add_points
    @points += 1
  end

  def set_hand(*hand)
    case hand.size
    when 0
      @hand = HANDS.sample
    when 1
      @hand = hand.join 
    end
  end
end
