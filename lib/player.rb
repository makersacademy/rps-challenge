
class Player
  attr_reader :selects, :valid_choice, :hand

  def initialize
    @valid_choice = ['p', 'r', 's']
  end

  def selects(hand)
    fail "Use 'p', 'r', 's' to play hand" unless valid_choice.include?(hand)
    @hand = hand
  end
end
