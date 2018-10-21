require_relative 'player'
require_relative 'bot'
class Game
  attr_reader :player1, :player2

  def self.create(player1, player2 = Bot.new)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def retry_or_show_winner?(name)
    
  end
end
