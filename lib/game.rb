require_relative 'versions'

class Game

  include GameVersions

  attr_reader :players, :current_player, :player_1, :player_2, :version, :choices

  def initialize(type)
    @version = Versions[type]
    @choices = version.count
    @players = []
  end

  def add_players(players)
    players.each { |player| @players << player }
  end

  def set_player_2(player)
    @player_2 = player
  end

  def turn_randomizer
    @current_player = players.select { |player| !player.move_chosen }.sample
  end

  def finished?
    players.all? { |player| player.move_chosen }
  end

  def result
    set_up
    check_for_draw
  end

  def reset_players
    players.each { |player| player.reset }
  end

  def history
    "#{player_1.wins} : #{player_2.wins}"
  end

  def computer_needed?
    players.count == 1
  end

  private

  def set_computer
    player_2.random_move
  end

  def set_player_1(player)
    @player_1 = player
  end

  def check_for_draw
    outcome == 0 ? draw : winner
  end

  def set_up
    set_player_1(players[0])
    computer_needed? ? set_computer : set_player_2(players[1])
  end

  def outcome
    (player_1.move-player_2.move) % choices
  end

  def draw
    "It's a draw!"
  end

  def winner
    outcome.odd? ? wins_game(player_1) : wins_game(player_2)
  end

  def wins_game(player)
    player.win_game
    "#{player.name} wins!"
  end

end
