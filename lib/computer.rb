class Computer
  attr_reader :hand

  def initialize
    @hand = false
    @hands = ['Rock', 'Paper', 'Scissors']
  end

  def play_hand
    @hand = @hands.sample 
  end

end

