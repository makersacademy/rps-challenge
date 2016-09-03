require_relative './hands.rb'

class Game

  def initialize(hand_class = Hands)
    @hand_class = hand_class
    @player1 = nil
    @player2 = nil
  end

  def play_game(option_1, option_2)
    @player1 = hand_class.new(option_1)
    @player2 = hand_class.new(option_2)
    winner_move = player1.plays(player2)
  end

  private

  attr_reader :player1, :player2, :hand_class

end
