class Game

  attr_reader :player_1, :computer_weapon, :winner

  def initialize(player_1)
    @player_1 = player_1
    @computer_weapon = "Paper"
    @winner = "Computer"
  end

  def computer_random_choice
    randon_selection = ['Rock', 'Paper', 'Scissors'].sample
    @computer_weapon = randon_selection
  end

  def play_game
    if (@player_1.weapon == "Rock" && @computer_weapon == "Scissors") ||
        (@player_1.weapon == "Paper" && @computer_weapon == "Rock") ||
        (@player_1.weapon == "Scissors" && @computer_weapon == "Paper")
      @winner = @player_1.name
    elsif (@computer_weapon == "Rock" && @player_1.weapon == "Scissors") ||
        (@computer_weapon == "Paper" && @player_1.weapon == "Rock") ||
        (@computer_weapon == "Scissors" && @player_1.weapon == "Paper")
    else
      @winner = "It's a draw"
    end
  end
end
