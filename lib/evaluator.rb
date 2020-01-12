require_relative 'game'

class Evaluator

  attr_reader :game
  attr_accessor :result

  def initialize(game = Game.new(user))
    @game = game
    @result = result
  end

  def evaluate
    move = game.move
    response = game.response
      if move == response
        @result = "tie"
      elsif (move == "rock" && response == "paper") ||
            (move == "paper"&& response == "scissors") ||
            (move == "scissors" && response == "rock")
        @result = "lose"
      else
        @result = "win"
      end

    result
  end

  def message
    if @result == "win"
      "Well done Marcello, you won!"
    elsif @result == "lose"
      "Too bad Marcello, you lost!"
    else 
      "Marcello, it's a tie!"
    end
  end

end