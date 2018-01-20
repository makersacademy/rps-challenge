require_relative 'player'
require_relative 'ai'

class Game

  attr_reader :ai, :player

  def initialize(ai, player)
    @ai = ai
    @player = player
  end

  def play_match(ai_choice, player_choice)
    if player_choice == "rock"
      if ai_choice == "rock"
        "it's a draw!"
      elsif ai_choice == "paper"
        "you lose!"
      else
        "you win!"
      end
    elsif player_choice == "paper"
      if ai_choice == "rock"
        "you win!"
      elsif ai_choice == "paper"
        "it's a draw!"
      else
        "you lose!"
      end
    elsif player_choice == "scissors"
      if ai_choice == "rock"
        "you lose!"
      elsif ai_choice == "paper"
        "you win!"
      else
        "it's a draw!"
      end
    else
    end
  end
  
end
