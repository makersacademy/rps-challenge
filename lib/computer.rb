class Computer
  attr_reader :hand

  def play_hand
    @hand = ['Rock', 'Paper', 'Scissors'].sample
  end
end
