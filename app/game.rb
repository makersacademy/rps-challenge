
require_relative 'computer'
class Game
  CHOICES = ["paper","rock","scissors"]

  attr_reader :player, :computer

  def initialize
    @player = Player.new('player')
    @computer = Computer.new('The computer')
  end

  def intro
    system 'clear'
    puts "\nPlay Rock-Paper-Scissors!"
    puts "\nRock breaks scissors, paper covers rock, and scissors cuts paper."
  end

  def message(winning_hand)
    case winning_hand
    when 'rock'
      puts "\nRock breaks scissors!"
    when 'paper'
      puts "\nPaper wraps rock!"
    when 'scissors'
      puts "\nScissors cuts paper!"
    end
  end

  def compare
    if player.pick_a_choice == computer.pick_a_choice
      puts "\nYou tied! You both chose #{CHOICES[(computer.pick_a_choice)]}."
    elsif (player.pick_a_choice == 'rock' && computer.pick_a_choice == 'scissors') ||
          (player.pick_a_choice == 'scissors' && computer.pick_a_choice == 'paper') ||
          (player.pick_a_choice == 'paper' && computer.pick_a_choice == 'rock')
      puts "\nYou chose #{CHOICES[(player.pick_a_choice)]} and the" \
           " computer chose #{CHOICES[(computer.pick_a_choice)]}."
      message(player.choice)
      puts "\nYou won!"
    else
      puts "\nYou chose #{CHOICES[(player.pick_a_choice)]} and the" \
           " computer chose #{CHOICES[(computer.pick_a_choice)]}."
      message(computer.choice)
      puts "\nThe computer won!"
    end
  end

  def replay
    play_again_choice = 'n'

    while play_again_choice != 'y'
      puts "\nWould you like to play again? (Y/N)"
      puts

      play_again_choice = gets.chomp.downcase

      unless %w(y n).include?(play_again_choice)
        puts "\nError. Invalid entry. Please enter either 'y' or 'n'."
        next
      end

      if play_again_choice == 'y'
        Game.new.play
      elsif play_again_choice == 'n'
        puts "\nThanks for playing!"
        exit
      end
    end
  end

  def play
    intro
    player.pick_a_choice
    computer.pick_a_choice
    compare
    replay
  end
end



# class Game 

#   CHOICES = ['paper','rock','scissors']

#   attr_reader :player, :computer

#   def initialize
#     @player = :player
#     @computer = :computer
#   end


#   def tie player_pick, comp_pick
#     if player_pick == comp_pick
#        "It's a tie"
#     # elsif player_pick == "paper" && comp_pick== "rock"
#     #   puts "You win!! Paper wraps Rock."
#     # elsif player_pick == "rock" && comp_pick == "paper"
#     #   puts "Computer wins!! Paper wraps Rock"
#     # elsif player_pick == "scissors" && comp_pick == "rock"
#     #   puts "computer wins!! Rock smashes Scissors"
#     # elsif player_pick == "rock" && comp_pick == "scissors"
        
#     end
#   end

#     def comp_win player_pick, comp_pick
#       if comp_pick == "rock" && player_pick == "scissors"
#         "computer wins!!! Rock smashes scissors"
#       elsif comp_pick == "paper" && player_pick == "rock"
#         "computer wins!!! paper wraps rock"
#       elsif comp_pick == "scissors" && player_pick == "paper"
#         "computer_wins!!! scissors cuts paper"
#       end
#     end

#     def player_win player_pick, comp_pick
#       if player_pick == "rock" && comp_pick == "scissors"
#         "player wins!!! rock smashes scissors"
#       elsif player_pick == "paper" && comp_pick == "rock"
#         "player wins!!! paper wraps rock"
#       elsif player_pick == "scissors" && comp_pick == "paper"
#         "player wins!!! scissors cuts paper"
          
#       end
#     end
        
# end