require_relative './computer'

class Game
  COMPUTER = Computer.new
  attr_reader :player1, :result, :player2

  def initialize(player1, player2 = COMPUTER)
    @player1 = player1
    @player2 = player2
    @key_beats_value = { 'Rock' => 'Scissors', 'Paper' => 'Rock',
      'Scissors' => 'Paper' }
  end

  def play
    p1 = @player1.player_choice
    p2 = @player2.player_choice
    if p1 == p2
      'draw'
    elsif @key_beats_value[p1] == p2
      'player1'
    elsif @key_beats_value[p2] == p1
      'player2'
    end
  end
end
