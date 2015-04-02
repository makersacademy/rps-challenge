class RpsGame
  attr_reader :p1_move, :p2_move, :winner

  MOVES = [:rock, :paper, :scissors]

  def p1_go move
    fail 'not a valid move' unless MOVES.include? move
    @p1_move = move
  end

  def p2_go move
    fail 'not a valid move' unless MOVES.include? move
    @p2_move = move
  end

  def compare player1_move, player2_move
    @winner = :draw if player1_move == player2_move

    case player1_move
    when :rock
      @winner = player1_move if player2_move == :scissors
      @winner = player2_move if player2_move == :paper
    when :paper
      @winner = player1_move if player2_move == :rock
      @winner = player2_move if player2_move == :scissors
    when :scissors
      @winner = player1_move if player2_move == :paper
      @winner = player2_move if player2_move == :rock
    end
    @winner
  end
end