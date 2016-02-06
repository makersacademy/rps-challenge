class Game
  attr_reader :player
  
  def initialize(player)
    @player = player
    @options = ["Rock", "Paper", "Scissors"]
  end
  
  def players_name
    @player.name
  end
  
  def computers_choice
    @computers_choice = choose
  end
  
  def players_choice(choice)
    @player_choice = choice
  end
  
  def winner
    calculate_winner(@computers_choice, @player_choice)
  end
  
  private
  
  def choose
    @options.sample
  end
  
  def calculate_winner(computer, player)
    return @winner = "Draw" if computer == player
    computer_wins?(computer, player) ? @winner = "Computer" : @winner = @player
  end
  
  def rock_beats_scissors?(computer, player)
    computer == "Rock" && player == "Scissors"
  end
  
  def paper_beats_rock?(computer, player)
    computer == "Paper" && player == "Rock"
  end
  
  def scissors_beat_paper?(computer, player)
    computer == "Scissors" && player == "Paper"
  end
  
  def computer_wins?(computer, player)
    return true if rock_beats_scissors?(computer, player)
    return true if paper_beats_rock?(computer, player)
    return true if scissors_beat_paper?(computer, player)
  end
end