class Game
  attr_reader :player_choice, :computer_choice
  WIN_CONDITIONS = {'rock' => 'scissors', 'paper' => 'rock', 'scissors' => 'paper'}

  def initialize(player_choice, computer_choice)
    @player_choice = player_choice
    @computer_choice = computer_choice
  end

  def won?
    if WIN_CONDITIONS[@player_choice] == @computer_choice
      'You won!'
    elsif @player_choice == @computer_choice
      "It's a draw!"
    else
      "You lost!"
    end
  end
end
