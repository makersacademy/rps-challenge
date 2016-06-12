require_relative 'computer'
require_relative 'player'

class RPS

  MOVE_RESULT = {[:r, :s] => 'Rock crushes Scissors.',
                [:r, :l] => 'Rock crushes Lizard.',
                [:p, :r] => 'Paper covers Rock.',
                [:p, :sp] => 'Paper disproves Spock.',
                [:s, :p] => 'Scissors cut Paper.',
                [:s, :l] => 'Scissors decapitate Lizard.',
                [:l, :sp] => 'Lizard poisons Spock.',
                [:l, :p] => 'Lizard eats Paper.',
                [:sp, :s] => 'Spock smashes Scissors.',
                [:sp, :r] => 'Spock vaporizes Rock.'
                }

  attr_reader :players

  def initialize(player_1 = Player.new, player_2 = Computer.new)
    @players = [player_1, player_2]
  end

  def self.create(player_1, player_2)
    @game = RPS.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def players_names
    @players.map{ |player| player.name }
  end


  def result
    moves_the_same? ? "It's a tie!" : match_players_moves
  end

  def winner
    result == "It's a tie!" ? "No Winner!!!" : "#{select_winner.name} wins!!!"
  end

  private

  def moves_the_same?
    players_moves.uniq.size == 1
  end

  def match_players_moves
    @hash_match = match_moves_to_hash
    @winning_player_selection = @hash_match[0][0]
    result_message = @hash_match[1]
  end

  def match_moves_to_hash
    MOVE_RESULT.detect{ |moves,result| moves.sort ==  players_moves.sort }
  end

  def players_moves
    @players.map{ |player| player.choice }
  end

  def select_winner
    @players.detect{ |player| player.choice == @winning_player_selection }
  end
end

