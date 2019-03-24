require_relative './player'

class Game

  COMPUTER_NAME = "RPSBot::9000"

  def self.create(name1, name2 = nil, player = Player)
    if name2.nil?
      @game = new(name1, COMPUTER_NAME, player)
      @game.player2.set_computer
    else
      @game = new(name1, name2, player)
    end
    @game
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
    [
      "It's a draw",
      "#{player1.name} wins",
      "#{player2.name} wins"
    ][score]
  end
end
