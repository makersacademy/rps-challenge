# require_relative "./lib/player.rb"
class Game
attr_reader :options_arr
  def initialize
    @options_arr = ["rock", "paper", "scissors"]
    puts " Select #{@options_arr[0]}, #{@options_arr[1]} or #{@options_arr[2]}:"
  end

  def valid_input(choice)
      false unless choice = "rock"||choice = "paper" || choice = "scissors"
      true
  end

  def play_game


    puts "Choose rock, paper or scissors!"
    @player_choice = gets.chomp
    @computer = @options_arr.sample

    if valid_input(@player_choice) == true && @player_choice !=@computer
        if @player_choice == "rock" && @computer == "paper" || @player_choice == "paper" && @computer == "scissors" || @player_choice == "scissors" && @computer == "rock"
        @result = "You lose!"
        puts @result
        elsif @computer == "rock" && @player_choice == "paper" || @computer == "paper" && @player_choice == "scissors" || @computer == "scissors" && @player_choice == "rock"
        @result = "You win!"
        puts @result
        else
        raise "Please enter a valid option"
        # break
        end
    else
       puts"Play again!"
    end
  end
end





game = Game.new
game.play_game
