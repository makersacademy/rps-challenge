class RpsGame
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
    return (@winner = { draw: player1_move }) if player1_move == player2_move
    look_up = []
    look_up << player1_move
    look_up << player2_move
    win_move = MATCHES[look_up]
    win_move == player1_move ? key = :player_1 : key = :player_2
    @winner = { key => win_move }
  end
end