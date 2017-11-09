require './lib/player.rb'
require './lib/computer.rb'

class Game

attr_reader :player, :computer

def initialize(player = Player.new, computer = Computer.new)
  @player = player
  @computer = computer
end

def computer_choice
  @computer.choose_weapon
end

def play(player_a, player_b)
    if (player_a == "rock" || player_a == "paper" || player_a == "scissors")
      if (player_a == player_b)
         "We got the same, let's keep playing!"
      elsif (player_a == "rock" && player_b == "scissors")
         "computer choice is: " + player_b + " , you win! :)"
      elsif (player_a == "rock" && player_b == "paper")
          "computer choice is: " + player_b + " ,computer wins :("
      elsif (player_a == "paper" && player_b == "scissors")
         "computer choice is: " + player_b + " ,computer wins :("
      elsif (player_a == "paper" && player_b == "rock")
         "computer choice is: " + player_b + " , you win! :)"
      elsif (player_a == "scissors" && player_b == "rock")
         "computer choice is: " + player_b + " ,computer wins :("
      elsif (player_a == "scissors" && player_b == "paper")
         "computer choice is: " + player_b + " , you win! :)"
      end
    end
  end
end
