class Player

  def initialize
    @hands = %w(rock paper scissors)
    @name = 'anonymous'
    @winner = false
  end

  attr_accessor :name, :opponent, :hand, :winner

  def choose_hand(hand)
    fail "Choose only: 'rock', 'paper' or 'scissors'" unless @hands.include?(hand)
    @hand = hand
  end

  def chosen_hand?
    fail 'Player has no opponent' unless opponent
    !hand.nil?
  end
end
