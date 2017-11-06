require './lib/player.rb'
require './lib/computer.rb'

class Game


def initialize(player = Player.new, computer = Computer.new)
  @player = player
  @computer = computer
end

def play
  puts "What's your choice?"
  user_input = gets.chomp.downcase

  user_input = @player.choose_weapon(user_input)
  computer_choice = @computer.choose_weapon

    if (user_input == "rock" || user_input == "paper" || user_input == "scissors")
      if (user_input == computer_choice)
        puts "We got the same, let's keep playing!"
      elsif (user_input == "rock" && computer_choice == "scissors")
        puts "computer choice is: " + computer_choice + " , you win! :)"
      elsif (user_input == "rock" && computer_choice == "paper")
        puts "computer choice is: " + computer_choice + " ,computer wins :("
      elsif (user_input == "paper" && computer_choice == "scissors")
        puts "computer choice is: " + computer_choice + " ,computer wins :("
      elsif (user_input == "paper" && computer_choice == "rock")
        puts "computer choice is: " + computer_choice + " , you win! :)"
      elsif (user_input == "scissors" && computer_choice == "rock")
        puts "computer choice is: " + computer_choice + " ,computer wins :("
      elsif (user_input == "scissors" && computer_choice == "paper")
        puts "computer choice is: " + computer_choice + " , you win! :)"
      end
    end
  end
end
