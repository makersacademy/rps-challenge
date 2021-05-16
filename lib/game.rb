class Game

  attr_reader :computer_choice, :player_choice

  def initialize(player_choice, computer_choice)
    @player_choice = player_choice
    @computer_choice = computer_choice
  end

  def declare_winner
    if (@player_choice == "Rock" && @computer_choice == "Scissors") || 
      (@player_choice == "Scissors" && @computer_choice == "Paper") ||
      (@player_choice == "Paper" && @computer_choice == "Rock")
      "You win!"
    elsif @player_choice == @computer_choice
      "Draw!"
    else
      "You lose!"
    end
  end

  def self.create(player_choice, computer_choice)
    @game = Game.new(player_choice, computer_choice)
  end

  def self.instance
    @game
  end

end
