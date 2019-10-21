require_relative 'log'

class Game < Log

  attr_reader :current_turn, :battle_status

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1
    @log = ['The Battle Begins!']
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def switch_turns
    p current_turn
    @current_turn = opposite_of(current_turn)
  end

  # def game_over?
  #   losing_players.any?
  # end

  # def loser
  #   losing_players.first
  # end

  def single_player_game?
    player2.class != Player
  end

  def retaliate(player)
    # attack(player)
  end

  private

  attr_reader :players

  def opposite_of(current_player)
    players.reject { current_player }.first
  end

  def losing_players
    players.select { |player| player.hp <= 0 }
  end
end
