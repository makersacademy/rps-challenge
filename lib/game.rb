class Game

  attr_reader :players

   def initialize(player, computer)
     @player = player
     @computer = computer
     @players = [player, computer]
   end

   def winner
     if @computer.weapon == "Rock" && @player.weapon == "Scissors"
      "Computer wins"
     elsif @computer.weapon == "Paper" && @player.weapon == "Rock"
       "Computer wins"
     elsif @computer.weapon == "Scissors" && @player.weapon == "Paper"
       "Computer wins"
     elsif @player.weapon == "Rock" && @computer.weapon == "Scissors"
       "#{@player.name} wins"
     elsif @player.weapon == "Paper" && @computer.weapon == "Rock"
       "#{@player.name} wins"
     elsif @player.weapon == "Scissors" && @computer.weapon == "Paper"
       "#{@player.name} wins"
     else
       "Draw"
     end
   end

end

