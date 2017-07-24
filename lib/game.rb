require_relative 'player'

class Game

  attr_reader :opponent_response, :winner, :player

  def self.instance
    @game
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def initialize(player)
    @player = player
    @opponent_response = ""
    @winner = ""
  end

  def generate_response
    @opponent_response = ["Rock", "Paper", "Scissors"].sample
  end

  def declare_winner
    if determine_winner
      @winner = "You win"
    elsif determine_draw
      @winner = "No win. It's a draw"
    else
      @winner = "The Opponent wins"
    end
  end

  private
  def determine_winner
    @player.current_choice == "Rock" && @opponent_response == "Scissors" || @player.current_choice == "Paper" && @opponent_response == "Rock" || @player.current_choice == "Scissors" && @opponent_response == "Paper"
  end

  def determine_draw
    @player.current_choice == @opponent_response
  end
end
