class Board

  def initialize
    @board = [:lizard, :paper, :spock, :rock, :scissors]
  end

  def round(first_player_move, second_player_move)
    @board.rotate(first_player_move.to_sym)[]
