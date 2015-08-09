class Player

  def initialize
    @hands = ['rock','paper', 'scissors']
    @name = 'anonymous'
  end

  attr_accessor :name, :opponent, :hand

  def choose_hand(handy)
    fail "Choose only: 'rock', 'paper' or 'scissors'" unless @hands.include?(handy)
    @hand = handy
  end

  def chosen_hand?
    !hand.nil?
  end

  def hand_is
    hand
  end

end
