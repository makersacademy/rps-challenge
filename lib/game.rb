require_relative 'computer_player'

class Game
  attr_reader :player1_move, :player2_move, :result

  def initialize hierarchy, computer = nil
    @hierarchy = hierarchy
    @player2 = computer || ComputerPlayer.new(hierarchy)
  end

  def play player1_move
    @player1_move = player1_move
    @player2_move = @player2.move
    @result = find_winner
  end

  def find_winner
    result = @hierarchy.wins(@player1_move, @player2_move)
    return if result.nil?
    return :player1 if result == @player1_move
    :player2
  end
end
