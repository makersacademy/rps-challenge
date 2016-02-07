require_relative 'computer.rb'

class Player

  attr_reader :player_choice, :opponent

  def initialize(choice:, opponent: Computer)
    @player_choice = choice
    @opponent = opponent.new
  end

  def match
   return "It's a draw" if @opponent.choice == @player_choice
   return "You win!" if @player_choice == "scissors" && @opponent.choice == "paper"
   return "You win!" if @player_choice == "rock" && @opponent.choice == "scissors"
   return "You win!" if @player_choice == "paper" && @opponent.choice == "rock"
   "You lose!"
  end

end
