require_relative "./computer_player"

class Game

  attr_reader :player, :computer

   def initialize(player)
     @player = player
     @computer = ComputerPlayer.new
   end

   def winner(player_choice)
      if player_choice == "rock" && @computer.c_hand == "rock"
          return "No one wins - Draw"
        elsif player_choice == "rock" && @computer.c_hand == "paper"
          return "Computer"
        elsif player_choice == "rock" && @computer.c_hand == "scissors"
          return @player


        elsif player_choice == "paper" && @computer.c_hand == "paper"
          return "No one wins - Draw"
        elsif player_choice == "paper" && @computer.c_hand == "rock"
          return @player
        elsif player_choice == "paper" && @computer.c_hand == "scissors"
          return "Computer"


        elsif player_choice == "scissors" && @computer.c_hand == "paper"
          return @player
        elsif player_choice == "scissors" && @computer.c_hand == "scissors"
          return "No one wins - Draw"
        else player_choice == "scissors" && @computer.c_hand == "rock"
          return "Computer"
      end

   end
end
