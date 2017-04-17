require_relative 'game_randomizer'

class Game

  COMBINATIONS =  [["Scissors","Paper"],
                  ["Rock","Scissors"],
                  ["Paper","Rock"]]

  def initialize(player_option)
    @game = [player_option]
  end

  def winner(game_option)
    return "Nobody wins" if draw?(game_option)
    @game << game_option
    COMBINATIONS.include?(@game) ? "Player wins" : "Game wins"
  end

private

  def draw?(game_option)
    @game == [game_option]
  end

end
