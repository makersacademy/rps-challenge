require_relative './computer'

class Game

  RULES = { rock: [:scissors, :lizard],
          paper: [:rock, :spock],
          scissors: [:paper, :lizard],
          lizard: [:paper, :spock],
          spock: [:rock, :scissors] }

  def self.game
    @game
  end

  def self.start_game(player1, player2)
    @game = self.new(player1, player2)
  end

  def initialize(player1, player2)
    @players = { player1.id.to_sym => player1, player2.id.to_sym => player2 }
    @score = [0,0]
  end

  def ready?
    @players.all? { |id, player| player.has_weapon? }
  end

  def add_weapon(player_id, weapon)
    @players[player_id].set_weapon(weapon.to_sym)
    set_computer_weapon if one_player?
  end

  def play

  end

  private

  def one_player?
    @players.any? { |id, player| player.is_a?(Computer) }
  end

  def set_computer_weapon
    @players.each { |id, player| player.set_weapon if player.is_a?(Computer) }
  end

end
