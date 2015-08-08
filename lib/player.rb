class Player

  def initialize
    @hands = ['rock','paper', 'scissors']
  end

  attr_accessor :name, :opponent

  def choose_hand(hand)
    fail "Choose only: 'rock', 'paper' or 'scissors'" unless @hands.include?(hand)
    hand
  end
  
end
