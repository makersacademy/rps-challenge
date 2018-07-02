require_relative 'player'
require_relative 'computer'

class Game

attr_reader :player, :computer

  def initialize(name)
    @player = Player.new(name)
    @computer = Computer.new
  end

  def match(player_choice, computer_choice)
    if player_choice == computer_choice
     @result = "It's a draw"
   elsif computer_choice == "Paper" && player_choice == "Scissors"
      @result = "You win"
    elsif computer_choice == "Scissors" && player_choice == "Rock"
      @result = "You win"
    elsif computer_choice == "Rock" && player_choice == "Paper"
      @result = "You win"
    else
      @result = "Computer wins"
    end
  end

end
