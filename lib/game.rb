class Game

  attr_reader :computer_choice

  def initialize(player, player_choice)
    @player = player
    @player_choice = player_choice
  end

  def computer_selects
    @computer_choice = ["Rock", "Paper", "Scissors"].sample
  end

  def player_wins?
    ((@player_choice == "Paper") && (@computer_choice == "Rock")) ||
    ((@player_choice == "Scissors") && (@computer_choice == "Paper")) ||
    ((@player_choice == "Rock") && (@computer_choice == "Scissors"))
  end

  def player_won
    "Computer played #{@computer_choice}! YOU WON!"
  end

  def computer_wins?
    ((@player_choice == "Rock") && (@computer_choice == "Paper")) ||
    ((@player_choice == "Paper") && (@computer_choice == "Scissors")) ||
    ((@player_choice == "Scissors") && (@computer_choice == "Rock"))
  end

  def computer_won
    "Computer played #{@computer_choice}! COMPUTER WON!"
  end

  def tie
    "We both played #{@computer_choice}!"
  end

  def result
    computer_selects
    return computer_won if computer_wins?
    return player_won if player_wins?
    return tie
  end
end
