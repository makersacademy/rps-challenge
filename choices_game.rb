class Game
def initialize(player_one, computer)
  @player_input = player_one
  @computer_choice = computer 
end 

 def playing_game
    if player_one == computer
    puts "The computer has chosen #{computer} too. its a tie, have another go!"
     else
       if player_one == "rock" && computer == "paper"
        puts "THE DIS-TRUK-TOR chose paper, THE DIS-TRUK-TOR wins"
        elsif  player_one == "rock" && computer == "scissors"
        puts "THE DIS-TRUK-TOR chose scissors, rock destroys scissors so you are the champion!"
        elsif player_one == "paper" && computer == "rock"
        puts "THE DIS-TRUK-TOR chose rock. Paper wraps rock. You are the champion!"
        elsif player_one == "paper" && computer == "scissors"
        puts "THE DIS-TRUK-TOR scissors. Scissors cut paper. THE DIS-TRUK-TOR wins!"
        elsif player_one == "scissors" && computer == "rock"
        puts "THE DIS-TRUK-TOR chose rock and rock destroys scissors. THE DIS-TRUK-TOR is the winner!."
        elsif player_one == "scissors" && computer == "paper"
        puts "THE DIS-TRUK-TOR chose paper. Scissors cut paper so you are the winner."
        else
         puts "I didn't understand you. Please try again."
       end
    end
end
end