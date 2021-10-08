class Game
  attr_reader :computer_choice

  def initialize(player_choice)
    @computer_choice = choice
    @player_choice = player_choice
  end

  def play
    combinations = { "Scissors" => "Paper", "Paper" => "Rock", "Rock" => "Scissors" }
    if @player_choice == @computer_choice
      "It's a draw!"
    elsif combinations[@player_choice] == @computer_choice
      "You won!"
    else
      "Computer won!"
    end
  end

  def choice
    ["Rock", "Paper", "Scissors"].sample
  end

end