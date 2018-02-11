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
  DEFAULT_RULES = { rock: 'scissors',
                      scissors: 'paper',
                      paper: 'rock'}

  def initialize(player_1, player_2, moves = DEFAULT_MOVE_LIST, rules = DEFAULT_RULES)
    @player_1 = player_1
    @player_2 = player_2
    @moves = moves
    @rules = rules
  end

  def result(player_1_move, player_2_move)
    @results = {}
    case
    when player_1_move == player_2_move
      @results[:result] = 'draw'
      @results[:move] = player_1_move
    when @rules[player_1_move.to_sym] == player_2_move
      @results[:result] = 'win'
      @results[:winner] = player_1_move
      @results[:loser] = player_2_move
    else
      @results[:result] = 'loss'
      @results[:winner] = player_2_move
      @results[:loser] = player_1_move
    end
    @results
    # return :draw if player_1_move == player_2_move
    # return :win if @rules[player_1_move.to_sym] == player_2_move
    # return :loss if @rules[player_2_move.to_sym] == player_1_move
  end

end
