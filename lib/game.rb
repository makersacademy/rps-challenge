require_relative 'computer'
require_relative 'player'

class Game

  OPTIONS = ["Rock", "Paper", "Scissors"]

  attr_reader :player_name, :computer, :player_option, :computer_option, :winner

  def self.create(player_name, computer)
    @game = Game.new(player_name, computer)
  end
   
  def self.instance
    @game
  end
  
  def initialize(player_name, computer)
    @player_name = player_name
    @computer = computer
  end

  def winner
    if @player.option == @computer.computer_option
      "It's a draw"
    elsif @player.option == "Rock" && @computer.computer_option == "Scissors"
      "#{@player.player_name} wins"
    elsif @player.option == "Scissors" && @computer.computer_option == "Paper"
      "#{@player.player_name} wins"
    elsif @player.option == "Paper" && @computer.computer_option == "Rock"
      "#{@player.player_name} wins"
    else
      "Computer wins"
    end
  end
end