require_relative 'player'

class Game

  attr_reader :player_move, :cp_move, :message

  def initialize
    @player_move
    @cp_move 
  end

  def move
    @cp_move = ["Rock", "Paper", "Scissors"].sample
  end

  def message
    if @player_move == "Rock" && @cp_move == "Scissors" || 
      @player_move == "Scissors" && @cp_move == "Paper" || 
      @player_move == "Paper" && @cp_move == "Rock"
      return @message = "You're the winner!"
    elsif @player_move == "Rock" && @cp_move == "Paper" || 
      @player_move == "Scissors" && @cp_move == "Rock" || 
      @player_move == "Paper" && @cp_move == "Scissors"
      return @message = "Sorry, you lost!"
    else @player_move == @cp_move
      return @message = "It's a draw!"
    end 
  end

end

