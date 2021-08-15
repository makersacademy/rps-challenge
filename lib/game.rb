class Game

  attr_reader :name, :player_choice, :comp_choice

  def initialize(name, player_choice)
    @name = name
    @player_choice = player_choice
  end

  def computer
    ["Rock", "Paper", "Scissors"].sample
  end

  def play
    @comp_choice = computer
    case 
    when @player_choice == "Rock" && @comp_choice == "Scissors" 
      return "You win!"
    when @player_choice == "Paper" && @comp_choice == "Rock"
      return "You win!"
    when @player_choice == "Scissors" && @comp_choice == "Paper"
      return "You win!"
    when @player_choice == @comp_choice
      return "It's a draw!"
    else 
      return "Computer wins" 
    end
  end
end
