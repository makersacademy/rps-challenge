class Game

  def initialize(player_name, player_choice, computer_choice = ['ROCK', 'PAPER', 'SCISSORS'].sample)
    @player_name = player_name
    @player_choice = player_choice
    @computer_choice = computer_choice
  end

  def player_choice
    @player_choice
  end

  def computer_choice
    @computer_choice
  end

  def player_name
    @player_name
  end

  def determine_result
    @player_choice == @computer_choice ? "Draw!" 
    : @player_choice == 'ROCK' && @computer_choice == 'SCISSORS' || 
    @player_choice == 'PAPER' && @computer_choice == 'ROCK'|| 
    @player_choice == 'SCISSORS' && @computer_choice == 'PAPER' ? "#{player_name} Wins!"
    : "Computer Wins!"
  end

end