require_relative "logic"

class Game

  attr_reader :player, :computer, :winner

  def initialize(player, computer)
    @player = player
    @computer = computer
    @winner = nil
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def check_winner(player_wins)
    @winner = (
    @player.name if player_wins == true
      "AIbot" if player_wins == false
      )
  end
end
