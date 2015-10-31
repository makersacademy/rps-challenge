require_relative 'versions'

class Game

  include GameVersions

  attr_reader :players, :current_player

  def initialize(type)
    @version = Versions[type]
    @choices = @version.count
    @players = []
  end

  def add_players(players)
    players.each { |player| @players << player }
  end

  def turn_randomizer
    @current_player = players.select { |player| !player.move_chosen }.sample
  end

  def finished?
    players.all? { |player| player.move_chosen }
  end

  def result
    check_for_draw
  end

  def reset_players
    players.each { |player| player.reset }
  end

  private

  def computer_needed?
    players.count == 1
  end

  def computer_opponent
    rand(1..@choices)
  end

  def check_for_draw
    outcome == 0 ? draw : winner
  end

  def outcome
    if computer_needed?
      (@players[0].move-computer_opponent) % @choices
    else
      (@players[0].move-@players[1].move) % @choices
    end
  end

  def draw
    "it's a draw!"
  end

  def winner
    if computer_needed?
      outcome.odd? ? @players[0].name : "Computer"
    else
      outcome.odd? ? @players[0].name : @players[1].name
    end
  end

end
