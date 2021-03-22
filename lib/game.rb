require './lib/player'

class Game
  attr_reader :player, :choice, :computer_choice
  def initialize(name)
    @player = Player.new(name)
  end

  def move(choice)
    @choice = choice
  end

  def computer_move
    @computer_choice = ["Rock", "Paper", "Scissors"].sample
    @computer_choice
  end

  def determines_outcome
    if
      @choice == @computer_choice
      "Result: It's a draw"
    elsif
      (@choice == "Rock" && @computer_choice == "Scissors") ||
      (@choice == "Paper" && @computer_choice == "Rock") ||
      (@choice == "Scissors" && @computer_choice == "Paper")
      "Result: #{@choice} beats #{@computer_choice}, #{@player.name} wins!"
    else
      "Result: #{@computer_choice} beats #{@choice}, Computer wins!"
    end
  end
end
