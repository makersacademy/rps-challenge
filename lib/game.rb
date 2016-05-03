require_relative 'player'
require_relative 'rules'
require_relative 'rulesplus'
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


  def play_computer
    rules.calculate_result(player_1.move, rules.random_move)
  end

  def multiplayer_result
    rules.calculate_result(player_1.move,player_2.move)
  end

  private

  attr_reader :rules, :moves

end