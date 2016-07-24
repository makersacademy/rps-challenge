require_relative 'computer_player'
require_relative 'rules'

class Game

  attr_reader :player1, :player2, :type

  def self.start(player1, player2, type, rules)
    @current_game = Game.new(player1, player2, type, rules)
  end

  def self.current
    @current_game
  end

  def initialize(player1, player2 = "Computer", type = "computer", rules = "rps")
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
    @type = type
    @rules = Rules.new(rules)
    create_computer(player2) if type == "computer"
  end

  def rpssl?
    @rules.spock?
  end

  def name_of(player)
    player.name
  end

  def action(player, *action)
    player.move(action.first)
  end

  def winner(player1, player2)
    @rules.winner(player1, player2)
  end

  private

  def create_computer(player2)
    @player2 = ComputerPlayer.new(player2, @rules.options)
  end

end
