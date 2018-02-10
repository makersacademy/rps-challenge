class Game

  def self.create(player_1, player_2)
    @current_game ||= Game.new(player_1, player_2)
  end

  def self.current_game
    raise "No current game" if !@current_game
    @current_game
  end

  attr_reader :player_1, :player_2, :moves

  DEFAULT_MOVE_LIST = %w(rock paper scissors)
  DEFAULT_RESULTS = { rock: 'scissors',
                      scissors: 'paper',
                      paper: 'rock'}

  def initialize(player_1, player_2, moves = DEFAULT_MOVE_LIST, results = DEFAULT_RESULTS)
    @player_1 = player_1
    @player_2 = player_2
    @moves = moves
    @results = results
  end

  def result(player_1_move, player_2_move)
    return :draw if player_1_move == player_2_move
    return :win if @results[player_1_move.to_sym] == player_2_move
    return :loss if @results[player_2_move.to_sym] == player_1_move
  end

end
