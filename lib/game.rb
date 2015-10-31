require_relative 'versions'

class Game

  include GameVersions

  attr_reader :players

  def initialize(type)
    @version = Versions[type]
    @players = []
  end

  def add_players(players)
    players.each { |player| @players << player }
  end

  def current_player
    players.select { |player| !player.move_chosen }.sample
  end

  def computer_needed?
    players.count == 1
  end

  def finished?
    players.all? { |player| player.move_chosen }
  end

  # def outcome
  #   (@p1_value-@p2_value)%CHOICES
  # end
  #
  # def check_for_draw
  #   outcome == 0 ? draw : winner
  # end
  #
  # def draw
  #   "it's a draw!"
  # end
  #
  # def winner
  #   outcome.odd? ? player1_name : player2_name
  # end

end
