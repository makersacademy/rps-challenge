class Game

  attr_reader :player, :computer

  CHOICES = ["rock", "paper", "scissors"]

  def initialize(player)
    @player = player
    @choice = choice
    @computer = CHOICES.sample
  end

  def winner 
    if @player.choice == @computer 
      return "It's a draw"
    elsif @player.choice == "Rock" && @computer == "Scissors"
      return "You win!"
    elsif @player.choice == "Paper" && @computer == "Rock"
      return "You win!"
    elsif @player.choice == "Scissors" && @computer == "Paper"
      return "You win!"
    end
  end
end 
