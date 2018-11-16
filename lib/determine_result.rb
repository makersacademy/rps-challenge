require_relative './computer_player'
require_relative './message_generator'

class DetermineResult
  attr_reader :p1_move, :comp_move, :winner

  def initialize(player_move, computer_player = ComputerPlayer.new)
    @p1_move = player_move.downcase
    @comp_move = computer_player.move
  end

  def find_winner
    @p1_move == @comp_move ? @winner = 'draw' : send(@p1_move, @comp_move)
  end

  def rock(opponent_move)
    opponent_move == 'paper' ? @winner = 'computer' : @winner = 'player'
  end

  def paper(opponent_move)
    opponent_move == 'scissors' ? @winner = 'computer' : @winner = 'player'
  end

  def scissors(opponent_move)
    opponent_move == 'rock' ? @winner = 'computer' : @winner = 'player'
  end
end
