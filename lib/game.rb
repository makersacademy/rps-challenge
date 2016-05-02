require_relative 'player'
require_relative 'rules'

class Game

  class << self

    attr_reader :current_game

    def new_game(player_1 = Player.new(name), player_2 = nil, rules = Rules.new)
      @current_game = Game.new(player_1, player_2,rules)
    end

  end

  attr_reader :player_1, :player_2

  def initialize(player_1 = Player.new(name), player_2 = nil, rules = Rules.new)
    @player_1 = player_1
    @player_2 = player_2
    @rules = rules
  end


  def play_computer(player_move)
    rules.calculate_result(player_move, rules.random_move)
  end

  def play_human(player_1_move, player_2_move)
    rules.calculate_result(player_1_move,player_2_move)
  end

  private

  attr_reader :rules, :moves

end