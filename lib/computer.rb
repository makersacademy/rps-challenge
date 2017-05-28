class Computer
  attr_reader :hand, :points, :name

  def initialize
    @name = 'the Computer'
    @hand = false
    @hands = ['Rock', 'Paper', 'Scissors', 'Lizard', 'Spock']
    @points = 0
  end

  def play_hand
    @hand = @hands.sample
  end

  def wins
    @points += 1
  end
end
