class Computer
  attr_reader :hand, :points

  def initialize
    @hand = false
    @hands = ['Rock', 'Paper', 'Scissors']
    @points = 0
  end

  def play_hand
    @hand = @hands.sample 
  end

  def wins
    @points += 1
  end

end

