class Game
  attr_reader :player1, :result, :player2

  def initialize(player1, player2 = Computer.new)
    @player1 = player1
    @player2 = player2
    @key_beats_value = { 'Rock' => 'Scissors', 'Paper' => 'Rock',
      'Scissors' => 'Paper' }
  end

  def play
    if @player1.player_choice == @player2.player_choice
      'draw'
    elsif @key_beats_value[@player1.player_choice] == @player2.player_choice
      'player1'
    elsif @key_beats_value[@player2.player_choice] == @player1.player_choice
      'player2'
    end
  end
end
