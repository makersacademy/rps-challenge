class Game
  ERR_MAKE_MOVE = "Please make sure player and opponent have mad their moves"
  ERR_INVALID_MOVE = "Check Game::MOVES for accepted moves"
  ERR_NO_ROBOT = "You're not fighting a robot"
  ERR_MOVE_MADE = "Player has already made a move"
  # MOVES = ['rock', 'scissors', 'paper'] # each one defeats the next.

  RULES = {
    :rock => [:scissors],
    :scissors => [:paper],
    :paper => [:rock],
  }

  attr_reader :scorecard, :moves, :move_history, :rules

  def initialize(player, opponent = nil, rules = RULES)
    @player = player
    @opponent = opponent
    @move_history = []
    @moves = [nil, nil]
    @scorecard = { player: 0, opponent: 0, draws: 0 }
    @rules = rules
  end

  def player_name
    @player.name
  end
  def opponent_name
    @opponent.name
  end

  def player_move(move)
    raise ERR_INVALID_MOVE unless RULES[move.to_sym]
    raise ERR_MOVE_MADE unless @moves[0].nil?
    @moves[0] = move.to_sym
  end
  def opponent_move(move)
    raise ERR_INVALID_MOVE unless RULES[move.to_sym]
    raise ERR_MOVE_MADE unless @moves[1].nil?
    @moves[1] = move.to_sym
  end


  def robot_move
    raise ERR_MOVE_MADE unless @moves[1].nil?
    @moves[1] = RULES.to_a.sample[0]
  end

  def result
    check_moves()

    return :tie if moves[0] == moves[1]
    return :player_win if RULES[moves[0]].include?(moves[1])
    return :robot_win if robot?
    return :opponent_win
  end

  def reset
    @moves = [nil, nil]
  end

  def update_scorecard
    @move_history << (@moves << result)

    case result()
      when :player_win
        scorecard[:player] += 1
      when :tie
        scorecard[:draws] += 1
      when :opponent_win
        scorecard[:opponent] += 1
      when :robot_win
        scorecard[:opponent] += 1
    end
  end

  def two_player?
    !!@opponent
  end

  private

  def check_moves
    raise ERR_MAKE_MOVE if @moves.include?(nil)
  end

  def robot?
    !@opponent
  end


end
