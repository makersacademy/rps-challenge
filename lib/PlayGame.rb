require_relative 'GameAI'
require_relative 'player'

class PlayGame

  attr_reader :win

  def initialize(player_choice, bot_choice)
    @player_choice = player_choice
    @bot_choice = bot_choice
    @win = ""
  end

  def play

    if @player_choice == @bot_choice
      @win = "draw"
    elsif @player_choice == "rock" && @bot_choice == "scissors"
    	 @win = "win"
    elsif @player_choice == "paper" && @bot_choice == "rock"
      @win = "win"
    elsif @player_choice == "scissors" && @bot_choice == "paper"
      @win = "win"
    else
	    "lose"
     end
  end
end
