require_relative 'player'
require_relative 'console'

class Game
  attr_reader :player, :console

  def initialize(player = Player.new, console = Console.new)
    @player = player
    @console = console
  end

  #  RULESMAP = { "Paper" <= "Scissors", "Scissors" <= "Rock", "Rock" <= "Paper" }
  #
  # def winner
  #   if @player.move == RULESMAP[@player.move]
  #     "Console wins"
  #   elsif @player.move == @console.console_choice
  #     "Draw"
  #   else
  #     "You win"
  #   end
  # end
end
