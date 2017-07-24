require_relative 'player'

class Game

  attr_reader :opponent_response, :winner

  def initialize(player)
    @current_choice = player.current_choice
  end

  def generate_response
    @opponent_response = ["Rock", "Paper", "Scissors"].sample
  end

  def declare_winner
    generate_response
    if @current_choice == "Rock" && @opponent_response == "Scissors"
      @winner = "You win"
    elsif @current_choice == "Paper" && @opponent_response == "Rock"
      @winner = "You win"
    elsif @current_choice == "Scissors" && @opponent_response == "Paper"
      @winner = "You win"
    elsif @current_choice == @opponent_response
      @winner = "No win. It's a draw"
    else
      @winner = "The Opponent wins"
    end
  end

end
