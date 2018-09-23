require_relative 'random_player'
require_relative 'victory_generator'

# This class takes the players and holds them in a game. It checks who has won
# and returns the type of win they achieved e.g. paper COVERS rock.
class Game
  POSSIBLE_MOVES = ["Rock", "Paper", "Scissors", "Lizard", "Spock"]

  attr_reader :players

  def initialize(player1, player2: RandomPlayer.new,
      victory_generator: VictoryGenerator.new)
    @players = [player1, player2]
    @victory_generator = victory_generator
  end

  def player_names
    players.map { |player| player.name }
  end

  def choose_move(index, move = nil)
    players[index].choose_move(move)
  end

  def winner
    raise 'Game is not yet over' if game_not_over?
    
    players.index(@victory_generator.winner(players))
  end

  def victory_type
    raise 'Game is not yet over' if game_not_over?

    @victory_generator.victory_type(players)
  end

  private

  def game_not_over?
    players.map { |player| player.move }.include?(nil)
  end
end
