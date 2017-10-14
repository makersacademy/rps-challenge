require 'human'
require 'computer'
require 'outcome_finder'

class Game
  def initialize player_name, player_class = Human, computer_class = Computer
    @player = player_class.new player_name
    @computer = computer_class.new
  end
  def turn human_selection
    outcome = OutcomeFinder::OUTCOMES[computer.selection][human_selection]
    player.update_score outcome
  end

  private
  attr_reader :player, :computer
end
