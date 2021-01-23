require_relative "player"
require_relative "playerbot"

class Game

  attr_reader :players, :results, :winner

  def initialize(player1)
    @player1 = player1
    @player2 = PlayerBot.new("opponentbot")
    @players = [@player1, @player2]
  end

  def self.create(player1)
    @game = Game.new(player1)
  end

  def self.instance
    @game
  end

  def get_results
    @results = {player1: players[0].choice, player2: players[1].choice}
  end

  def draw?
    results[:player1] == results[:player2]
  end

  def winner
    return nil if draw?

    winning_combos = [["paper", "rock"], ["rock", "scissors"], ["scissors", "paper"]]
    actual_results = [results[:player1], results[:player2]]
    winning_combos.include?(actual_results) ? players[0] : players[1]
  end

end
