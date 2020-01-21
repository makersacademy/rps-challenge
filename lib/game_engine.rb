require './lib/computer'
require './rps_web'

class Game
  
  attr_reader :choice, :comp_choice

  def initialize(choice, comp_choice)
    @choice = choice
    @comp_choice = comp_choice
  end

  def winner_is
    if game_rules[choice.to_sym].include? @comp_choice
      "Player Wins"
    elsif game_rules[comp_choice.to_sym].include? @choice
      "Computer Wins"
    else
      "It's a Draw"
    end
  end

  def game_rules
    {
      'Paper': %w(Rock Spock),
      'Rock': %w(Scissors Lizard),
      'Scissors': %w(Paper Lizard),
      'Lizard': %w(Spock Paper),
      'Spock': %w(Scissors Rock)
    }
  end

end
