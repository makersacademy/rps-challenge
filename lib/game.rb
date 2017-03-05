class Game

  attr_reader :players, :current_player, :opponent, :evaluate_engine, :game

  def initialize(player_1, player_2, evaluate_engine = Evaluate)
    @players = [player_1, player_2]
    @current_player = @players[rand(0..1)]
    @evaluate_engine = evaluate_engine.new
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
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

  def get_result
    @evaluate_engine.get_result(player_1.choice, player_2.choice)
  end

  def change_player
    @current_player = opponent_of(current_player)
  end

  def opponent_of(curr_player)
    @players.select { |player| player != curr_player}.first
  end

end
