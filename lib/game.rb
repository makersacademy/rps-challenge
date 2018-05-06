require_relative 'rules'
require_relative 'opponent'

class Game
  attr_reader :opponent, :player_one, :name, :hand, :opponent_hand, :rules
  def initialize(player_one, hand, opponent_class = Opponent.new)
    @player_one = player_one
    @opponent = opponent_class
    @hand = hand.to_sym
    @rules = Rules.new.rules
  end

  def play
    @opponent_hand = @opponent.hand
  end

  def result
    if @opponent_hand == @rules[@hand]
      'You win!'
    elsif @hand == @opponent_hand
      "It's a tie!"
    else
      "You lose!"
    end
  end

end
