require_relative './computer'
class Game
  attr_reader :player, :result, :computer

  def initialize(player)
    @player = player
    @key_beats_value = { 'Rock' => 'Scissors', 'Paper' => 'Rock',
      'Scissors' => 'Paper' }
    @computer = Computer.new
  end

  def play(player_choice)
    computer_choice = computer.choice
    if player_choice == computer_choice
      'draw'
    elsif @key_beats_value[player_choice] == computer_choice
      'player'
    elsif @key_beats_value[computer_choice] == player_choice
      'computer'
    end
  end
end
