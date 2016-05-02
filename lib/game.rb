require_relative 'player'
require_relative 'rules'
require_relative 'moves'

class Game

  class << self

    attr_reader :current_game

    def new_game(player_1 = Player.new(name), player_2 = nil, rules = Rules.new, moves = Moves.new)
      @current_game = Game.new(player_1, player_2,rules, moves)
    end

  end

  attr_reader :player_1, :player_2

  def initialize(player_1 = Player.new(name), player_2 = nil, rules = Rules.new, moves = Moves.new)
    @player_1 = player_1
    @player_2 = player_2
    @rules = rules
    @moves = moves
  end


  def play_computer(player_move)
    rules.calculate_result(player_move, moves.random_move)
  end

  private

  attr_reader :rules, :moves

end