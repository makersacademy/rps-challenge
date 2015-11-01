require_relative 'game_randomizer'

class Game

  def initialize(player_option)
    @game = [player_option]
  end

  def winner(game_option)
    @game << game_option
    combinations = { ["Scissors","Scissors"] => "Nobody wins",
                    ["Scissors","Paper"] => "Player wins",
                    ["Scissors","Rock"] => "Game wins",
                    ["Rock","Rock"] => "Nobody wins",
                    ["Rock","Paper"] => "Game wins",
                    ["Rock","Scissors"] => "Player wins",
                    ["Paper","Paper"] => "Nobody wins",
                    ["Paper","Rock"] => "Player wins",
                    ["Paper","Scissors"] => "Game wins" }
    combinations[@game]
  end

end
