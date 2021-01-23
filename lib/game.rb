require_relative "player"
require_relative "playerbot"

class Game

  attr_reader :players, :results

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

end
