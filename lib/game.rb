require_relative './player'

class Game
  def self.create(name1, name2, player = Player)
    @game = new(name1, name2, player)
  end

  def self.instance
    @game
  end

  attr_reader :player1, :player2

  def initialize(name1, name2, player = Player)
    @player1 = player.new(name1)
    @player2 = player.new(name2)
  end

  def result
    score = (player1.choice - player2.choice) % 3
    ["It's a draw", "You win", "You lose"][score]
  end
end
