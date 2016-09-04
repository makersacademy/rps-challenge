require_relative './hands.rb'

# Understands how to play a game of Rock, Paper, Scissors
class Game

  def initialize(hand_class = Hands)
    @hand_class = hand_class
  end

  def play_game(option_1, option_2)
    player1 = hand_class.new(option_1)
    player2 = hand_class.new(option_2)
    player1.plays(player2)
  end

  private

  attr_reader :hand_class
end
