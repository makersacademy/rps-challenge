class Game

  def initialize(player_option)
    @game = [player_option]
  end

  def winner(game_option)
    @game << game_option
    combinations = { ["scissors","scissors"] => "Nobody wins",
                    ["scissors","paper"] => "Player wins",
                    ["scissors","rock"] => "Game wins",
                    ["rock","rock"] => "Nobody wins",
                    ["rock","paper"] => "Game wins",
                    ["rock","scissors"] => "Player wins",
                    ["paper","paper"] => "Nobody wins",
                    ["paper","rock"] => "Player wins",
                    ["paper","scissors"] => "Game wins" }
    combinations[@game]
  end

end
