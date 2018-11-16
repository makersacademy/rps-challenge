require_relative './computer_move'

class DetermineResult

  def initialize(player_move, computer_move = ComputerMove.new)
    @p1_move = player_move.downcase
    @comp_move = computer_move
  end

  def winner
    @p1_move == @comp_move ? @winner = "draw" : send(@p1_move, @comp_move)
  end

  def rock(opponent_move)
    opponent_move == 'paper' ? @winner = "computer" : @winner = "player"
  end

  def paper(opponent_move)
    opponent_move == 'scissors' ? @winner = "computer" : @winner = "player"
  end

  def scissors(opponent_move)
    opponent_move == 'rock' ? @winner = "computer" : @winner = "player"
  end
end
