require_relative 'player'
require_relative 'computer'

class Game

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  attr_reader :player, :computer, :result

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def rps(p_choice, c_choice)
    return @result = "DRAW" if player_choice == computer_choice
    c_win = [["ROCK", "PAPER"], ["PAPER", "SCISSORS"], ["SCISSORS", "ROCK"]]
    @result = c_win.include?([p_choice, c_choice]) ? "Computer wins" : "Player wins"
  end

end
