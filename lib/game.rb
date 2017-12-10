require_relative "./computer_player"

class Game

  attr_reader :player

   def initialize(player)
     @player = player
     @computer = ComputerPlayer.new
   end

   def winner(player_choice)
    if player_choice == "rock" && @computer.select_hand == "scissors"
      @player.name
      elsif @computer.select_hand == "rock" && player_choice == "scissors"
      "Computer"
      elsif player_choice == "scissors" && @computer.select_hand == "paper"
      @player.name
      elsif @computer.select_hand == "scissors" && player_choice == "paper"
      "Computer"
      elsif player_choice == "paper" && @computer.select_hand == "rock"
      @player.name
      elsif @computer.select_hand == "paper" && player_choice == "rock"
      "Computer"
      elsif @computer.select_hand == "paper" && player_choice == "paper"
      "No one wins - Draw"
      elsif @computer.select_hand == "scissors" && player_choice == "scissors"
      "No one wins - Draw"
      elsif @computer.select_hand == "rock" && player_choice == "rock"
      "No one wins - Draw"
    end

   end
end
