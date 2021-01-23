require "player"

class Game

  attr_reader :players, :results

  def initialize(player1)
    @player1 = player1
    @player2 = Player.new("opponentbot")
    @players = [@player1, @player2]
  end

  def self.create(player1)
    @game = Game.new(player1)
  end

  def self.instance
    @game
  end

  def get_results
    @results = Hash.new
    @results[:player1] = players[0].choice
    @results[:player2] = players[1].choice
    @results
  end

end
