class Game

  attr_reader :computer_choice, :player_choice

  def initialize(player_choice, computer_choice)
    @player_choice = player_choice
    @computer_choice = computer_choice
  end

  def declare_winner
    if player_wins_with_rock? || player_wins_with_paper? || player_wins_with_scissors?
      "You win!"
    elsif draw?
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

  private

  def player_wins_with_rock?
    (@player_choice == "Rock" && @computer_choice == "Scissors")
  end

  def player_wins_with_scissors?
    (@player_choice == "Scissors" && @computer_choice == "Paper")
  end

  def player_wins_with_paper?
    (@player_choice == "Paper" && @computer_choice == "Rock")
  end

  def draw?
    @player_choice == @computer_choice
  end

end
