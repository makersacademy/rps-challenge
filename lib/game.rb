require_relative 'rules'
require_relative 'opponent'

class Game
  attr_reader :player_two, :player_one, :name, :hand, :player_two_hand
  def initialize(player_one, hand, opponent = Opponent.new, rules = Rules.new)
    @player_one = player_one
    @player_two = opponent
    @hand = hand
    @rules = rules.rules
  end

  def play
    @player_two_hand = @player_two.hand
  end

  def result
    if @rules[@hand] == @player_two_hand
      'You win!'
    elsif @hand == @player_two_hand
      "It's a tie!"
    else
      "You lose!"
    end
  end

end
