require_relative 'computer'
require_relative 'player'

class RPS

  MOVE_RESULT = {[:r, :s] => 'Rock crushes Scissors.',
                [:l, :r] => 'Rock crushes Lizard.',
                [:p, :r] => 'Paper covers Rock.',
                [:p, :sp] => 'Paper disproves Spock.',
                [:p, :s] => 'Scissors cut Paper.',
                [:l, :s] => 'Scissors decapitate Lizard.',
                [:l, :sp] => 'Lizard poisons Spock.',
                [:l, :p] => 'Lizard eats Paper.',
                [:s, :sp] => 'Spock smashes Scissors.',
                [:r, :sp] => 'Spock vaporizes Rock.'
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
    moves_the_same? ? "It's a tie!" : MOVE_RESULT[@sorted_moves]
  end

  private

  def moves_the_same?
    sorted_players_moves.uniq.size == 1
  end

  def sorted_players_moves
    @sorted_moves = players_moves.sort
  end

  def players_moves
    @players.map{ |player| player.choice }
  end
end




