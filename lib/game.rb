require_relative 'random_player'
require_relative 'victory_generator'

# This class takes the players and holds them in a game. It checks who has won
# and returns the type of win they achieved e.g. paper COVERS rock.
class Game
  POSSIBLE_MOVES = ["Rock", "Paper", "Scissors", "Lizard", "Spock"]

  def initialize(player1, player2: RandomPlayer.new,
      victory_generator: VictoryGenerator.new)
    @players = [player1, player2]
  end

  def player_names
    @players.map { |player| player.name }
  end

  def possible_moves
    POSSIBLE_MOVES
  end

  def winner
  end 

end
