class Game
  ERR_MAKE_MOVE = "Please make sure player and opponent have mad their moves"
  ERR_INVALID_MOVE = "Check Game::MOVES for accepted moves"
  ERR_NO_ROBOT = "You're not fighting a robot"
  ERR_MOVE_MADE = "Player has already made a move"
  MOVES = ['rock', 'scissors', 'paper'] # each one defeats the next.

  attr_reader :moves

  def initialize(player)
    @player = player
    @moves = [nil, nil]
  end

  def player_name
    @player.name
  end

  def player_move(move)
    raise ERR_INVALID_MOVE unless MOVES.include?(move)
    raise ERR_MOVE_MADE unless @moves[0].nil?
    @moves[0] = move
  end

  def tie?
    @moves[0] == @moves[1]
  end

  def player_wins?
    check_moves()

    return nil if tie?

    if @moves[0] == 'rock' && @moves[1] == 'scissors'
      return true
    elsif @moves[0] == 'scissors' && @moves[1] == 'paper'
      return true
    elsif @moves[0] == 'paper' && @moves[1] == 'rock'
      return true
    else
      return false
    end
  end

  def reset
    @moves = [nil,nil]
  end

  def robot_move
    @moves[1] = MOVES.sample
  end

  private

  def check_moves
    raise ERR_MAKE_MOVE if @moves.include?(nil)
  end

end
