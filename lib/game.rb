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

  def selections(player, computer)
    @game_array = [ player , computer ]

  end

  def player_wins?
    win = [
      ["Rock", "Scissors"],
      ["Paper", "Rock"],
      ["Scissors", "Paper"]
    ]
    win.include?(@game_array)
  end

  def check_winner
    return player.name if player_wins?
    return "AIbot"
  end
end
