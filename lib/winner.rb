class Winner
  attr_reader :player_choice, :computer_choice

  def initialize(player_choice, computer_choice)
    @player_choice = player_choice
    @computer_choice = computer_choice
  end

  def calculate_winner
    beatmap = { 'Scissors' => 'Paper', 'Paper' => 'Rock', 'Rock' => 'Scissors' }

    if @player_choice == @computer_choice
      @winner = "It's a Draw!"
    elsif beatmap[@player_choice] == @computer_choice
      @winner = "You won!"
    else
      @winner = "The computer won!"
    end
  end
end
