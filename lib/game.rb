require_relative 'opponent'
require_relative 'player'
require_relative 'rules'

class Game

  attr_reader :player1, :player2

  def self.generate(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def outcome(rules = Rules.new(@player1.weapon, @player2.weapon))
    rules.winner
  end

end
