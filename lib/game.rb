require_relative 'player'
require_relative 'computer'

class Game
  attr_reader :winner, :players_choice, :computers_choice
  def initialize(player, computer = Computer.new)
    @players_choice = player.choice
    @computers_choice = computer.choice
    @winner
  end

  def determine_winner
    if @players_choice == @computers_choice
      @winner = :Draw
    elsif @players_choice == :Rock and @computers_choice == :Scissors
      @winner = true
    elsif @players_choice == :Paper and @computers_choice == :Rock
      @winner = true
    elsif @players_choice == :Scissors and @computers_choice == :Paper
      @winner = true
    else 
      @winner = false
    end 
  end


end
