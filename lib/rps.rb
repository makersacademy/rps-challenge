
class Rps

  attr_reader :move, :p1_move, :p2_move, :winner, :draw

  def initialize(player_1, player_2)
  @player_1 = player_1
  @player_2 = player_2
  @p1_move
  @p2_move
  @winner = nil
  @draw
  end

  def player_1
    @player_1
  end

  def player_2
    @player_2
  end

  def p1_choice(move)
    @p1_move = move.to_sym
  end

  def p2_choice(move)
    @p2_move = move.to_sym
  end

  def game
    if ( p1_move == :scissors && p2_move == :paper ) || ( p1_move == :paper && p2_move == :rock ) || ( p1_move == :rock && p2_move == :scissors )
      wins(player_1)
    elsif ( p2_move == :scissors && p1_move == :paper ) || ( p2_move == :paper && p1_move == :rock ) || ( p2_move == :rock && p1_move == :scissors )
      wins(player_2)
    else
      @draw = true
    end
  end

  def wins(player)
    @winner = player
  end

  def draw_or_win?
    @draw == nil ? "the winner is #{@winner.name}" : draw
  end


  def draw
    'No one wins, it was a draw'
  end

end