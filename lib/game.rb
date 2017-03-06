require_relative 'evaluate'

class Game

  attr_reader :players, :current_player, :opponent, :evaluate_engine, :game, :result, :game_type, :winner, :turn_count, :verb

  def initialize(player_1, player_2, game_type, evaluate_engine = Evaluate)
    @players = [player_1, player_2]
    @current_player = player_1
    @game_type = game_type
    @evaluate_engine = evaluate_engine.new(rules_file)
    @winner = nil
    @turn_count = 0
    @finished = false
  end

  def self.create(player_1, player_2, game_type, evaluate_engine = Evaluate)
    @game = Game.new(player_1, player_2, game_type)
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

  def update_state
    player_2.automated? ? update_state_1P : update_state_2P
  end

  def new_round
    @current_player = player_1
    player_1.choice = nil
    player_2.choice = nil
    @turn_count = 0
    @winner = nil
  end

  def get_result
    @result = @evaluate_engine.get_result(player_1.choice, player_2.choice)
  end

  def get_verb
    @verb = @evaluate_engine.get_verb(player_1.choice, player_2.choice)
  end

  def change_player
    @current_player = opponent_of(current_player)
  end

  def finished?
    @finished
  end

private

  def set_winner(logic)
    if logic == 1
      @winner = player_1
    elsif logic == -1
      @winner = player_2
    else
      @winner = "Draw"
    end
  end

  def rules_file
    return File.expand_path("../../public/logictable_rps.csv", __FILE__) if game_type == 0
    return File.expand_path("../../public/logictable_rpsls.csv", __FILE__) if game_type == 1
  end

  def update_state_2P
    increment_turn
    get_result if turn_count == 2
    set_winner(get_result) if turn_count == 2
    get_verb if turn_count == 2
    @finished = true if turn_count == 2
  end

  def update_state_1P
    increment_turn
    finish_round_auto
    get_result if turn_count == 1
    set_winner(get_result) if turn_count == 1
    get_verb if turn_count == 1
    @finished = true if turn_count == 1
  end

  def finish_round_auto
    player_2.make_random_choice(game_type)
  end

  def increment_turn
    @turn_count += 1
  end

end
