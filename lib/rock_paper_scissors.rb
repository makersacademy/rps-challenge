
class Game
  attr_reader :win_conditions
  attr_accessor :player_1_choice, :player_2_choice

  def initialize
    @win_conditions = {
      'rock' => 'scissors',
      'paper' => 'rock',
      'scissors' => 'paper'
    }
  end

  def outcome
    if @player_1_choice == @player_2_choice
      "It's a draw"
    elsif @win_conditions[@player_1_choice] == @player_2_choice
      "Player 1 wins"
    else
      "Player 2 wins"
    end
  end

end
