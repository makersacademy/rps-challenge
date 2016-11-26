require_relative "logic"

class Game

  attr_reader :player, :computer, :winner

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def check_winner(player_wins)
    @winner = ( player_wins ? player.name : "AIbot")
  end
end
