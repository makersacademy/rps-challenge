class RpsGame
  attr_reader :winner

  MOVES = [:rock, :paper, :scissors]
  MATCHES = { 
      [:rock, :paper] => :paper, 
      [:rock, :scissors] => :rock,
      [:scissors, :paper] => :scissors
    }

  def check_move move
    MOVES.include? move
  end

  def compare player1_move, player2_move
    fail 'not a valid move' unless check_move player1_move
    fail 'not a valid move' unless check_move player2_move

    return (@winner = { :draw => player1_move }) if player1_move == player2_move

    # look_up = []
    # look_up << player1_move, player2_move

    case player1_move
    when :rock
      @winner = { :player_1 => player1_move } if player2_move == :scissors
      @winner = { :player_2 => player2_move } if player2_move == :paper
    when :paper
      @winner = { :player_1 => player1_move } if player2_move == :rock
      @winner = { :player_2 => player2_move } if player2_move == :scissors
    when :scissors
      @winner = { :player_1 => player1_move } if player2_move == :paper
      @winner = { :player_2 => player2_move } if player2_move == :rock
    end
    @winner
  end
end