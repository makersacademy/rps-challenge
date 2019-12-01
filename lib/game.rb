require_relative 'player'
require_relative 'computer'
require_relative 'rules'

class Game

  def initialize (player, computer, rules = rules.new)
    @player = player
    @computer = computer
    @rules = rules
  end

  def winner

    if @rules[@player.choice].include? @computer.comp_choice
      :player
    else
    end

  end
end