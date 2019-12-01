require_relative 'player'
require_relative 'computer'
require_relative 'rules'

class Game

  def initialize(player, computer, rules = Rules.new)
    @player = player
    @computer = computer
    @rules = rules
  end

  def winner
    @rules.winner(@player.choice, @computer.comp_choice)
  end
end
