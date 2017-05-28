class Computer
  attr_reader :hand, :points, :value_hand

  def initialize
    @hand = false
    @hands = { 'Rock' => 1, 'Paper' => 2, 'Scissors' => 4, 'Lizard' => 7, 'Spock' => 12 }
    @points = 0
    @value_hand = 0
  end

  def play_hand
    @hand = @hands.keys.sample
    @value_hand = @hands[@hand] 
  end

  def wins
    @points += 1
  end
end
