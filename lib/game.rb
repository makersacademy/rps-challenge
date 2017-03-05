require_relative 'evaluate'

class Game

  attr_reader :players, :current_player, :opponent, :evaluate_engine, :game, :result

  def initialize(player_1, player_2, rules_file, game_type, evaluate_engine = Evaluate)
    @players = [player_1, player_2]
    @current_player = player_1
    @evaluate_engine = evaluate_engine.new(rules_file)
    @game_type = game_type
  end

  def self.create(player_1, player_2, rules_file, game_type)
    @game = Game.new(player_1, player_2, rules_file, game_type)
  end

  def self.instance
    @game
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def opponent_of(curr_player)
    @players.select { |player| player != curr_player}.first
  end

  def finish_round
    get_result
  end

  def new_round
    change_player
  end

  def get_result
    @result = @evaluate_engine.get_result(player_1.choice, player_2.choice)
  end

  def change_player
    @current_player = opponent_of(current_player)
  end

end
