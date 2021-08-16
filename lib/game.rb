class Game
  attr_reader :player_choice, :computer_choice

  def initialize(player_choice, computer_choice)
    @player_choice = player_choice
    @computer_choice = computer_choice
    @beatmap = { 'Scissors' => 'Paper', 'Paper' => 'Rock', 'Rock' => 'Scissors' }
  end

  def calculate_winner
    if @player_choice == @computer_choice
      "It's a Draw!"
    elsif @beatmap[@player_choice] == @computer_choice
      "You won!"
    else
      "The computer won!"
    end
  end
end
