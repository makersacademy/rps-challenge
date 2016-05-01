require_relative 'player'
require_relative 'rules'
require_relative 'moves'

class Game

  class << self

    def new_game(player = Player.new(name), rules = Rules.new, moves = Moves.new)
      @current_game = Game.new(player, rules, moves)
    end

    def current_game
      @current_game
    end

  end

  def initialize(player = Player.new(name), rules = Rules.new, moves = Moves.new)
    @player = player
    @rules = rules
    @moves = moves
  end

  def player_name
    player.name
  end

  def play_computer(player_move)
    rules.calculate_result(player_move, moves.random_move)
  end

  private

  attr_reader :rules, :moves, :player


end