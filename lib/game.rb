require_relative "logic"

class Game

  attr_reader :player, :computer, :winner, :logic

  def initialize(player, computer, logic)
    @player = player
    @computer = computer
    @logic = logic
  end

  def self.create(player, computer, logic)
    @game = Game.new(player, computer, logic)
  end

  def self.instance
    @game
  end

  def check_winner(player_wins)
    @winner = ( player_wins ? player.name : "AIbot")
  end
end
