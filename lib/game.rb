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
    if computer == "Rock" && player == "Scissors"
      @winner = "Computer"
    elsif computer == "Paper" && player == "Rock"
      @winner = "Computer"
    elsif computer == "Scissors" && player == "Paper"
      @winner = "Computer"
    elsif computer == player
      @winner = "Draw"
    else
      @winner = @player
    end
  end
end