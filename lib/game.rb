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

    # while !@player_choice.empty? do
    if valid_input(@player_choice) == true && @player_choice !=@computer
        if @player_choice == "rock" && @computer == "paper" || @player_choice == "paper" && @computer == "scissors" || @player_choice == "scissors" && @computer == "rock"
          puts "You lose!"
        elsif @computer == "rock" && @player_choice == "paper" || @computer == "paper" && @player_choice == "scissors" || @computer == "scissors" && @player_choice == "rock"
          puts "You win!"
        else
        raise "Invalid option!"
        end
    elsif valid_input(@player_choice) == true && @player_choice ==@computer
      puts "Choose again!"
      @player_choice = gets.chomp
      @computer = @options_arr.sample
    else
    end
  end
end






game = Game.new
game.play_game
