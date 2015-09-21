require_relative 'cpu_player'

class Game


# P1/P2_move required???
  attr_reader :rules, :p1_move, :p2_move, :winning_move, :p1_score, :p2_score

  def initialize
    @rules = {
    rock: {rock: :draw, paper: :paper, scissors: :rock},
    paper: {rock: :paper, paper: :draw, scissors: :scissors},
    scissors: {rock: :rock, paper: :scissors, scissors: :draw}
  }
    @p1_score = 0
    @p2_score = 0
  end

  def p1_move(move)
    @p1_move = move.to_sym
  end

  def p2_move(move)
    @p2_move = move.to_sym
  end

  def play
    @winning_move = @rules[@p1_move][@p2_move]
    update_score
    return :p1_wins! if @p1_move == @winning_move
    return :p2_wins! if @p2_move == @winning_move
    :draw
  end

  def update_score
    return nil if @winning_move == :draw
    @p1_score += 1 if @p1_move == @winning_move
    @p2_score += 1 if @p2_move == @winning_move
  end

  def reset
    @p1_score = 0
    @p2_score = 0
    @result = nil
  end

end
