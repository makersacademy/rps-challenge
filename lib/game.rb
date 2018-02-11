class Game

  def self.create(player_1, player_2)
    @current_game ||= Game.new(player_1, player_2)
  end

  def self.current_game
    raise "No current game" unless @current_game
    @current_game
  end

  attr_reader :player_1, :player_2, :moves, :results

  DEFAULT_MOVE_LIST = %w(rock paper scissors)
  DEFAULT_RULES = { rock: 'scissors',
                    scissors: 'paper',
                    paper: 'rock'
                  }

  def initialize(player_1, player_2, moves = DEFAULT_MOVE_LIST, rules = DEFAULT_RULES)
    @player_1 = player_1
    @player_2 = player_2
    @moves = moves
    @rules = rules
    @results = {}
  end

  def result(player_1_move, player_2_move)
    raise "You must choose a move" unless player_1_move
    draw_result(player_1_move) if player_1_move == player_2_move
    win_result(player_1_move, player_2_move) if @rules[player_1_move.to_sym] == player_2_move
    loss_result(player_1_move, player_2_move) if @rules[player_2_move.to_sym] == player_1_move
    @results
  end

  private

  def draw_result(player_1_move)
    @results[:result] = 'draw'
    @results[:move] = player_1_move
  end

  def win_result(player_1_move, player_2_move)
    @results[:result] = 'win'
    @results[:winner] = player_1_move
    @results[:loser] = player_2_move
  end

  def loss_result(player_1_move, player_2_move)
    @results[:result] = 'loss'
    @results[:winner] = player_2_move
    @results[:loser] = player_1_move
  end
end
