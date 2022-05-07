class Game

  attr_reader :result
  
  ALLOWED_MOVES = ["rock", "paper", "scissors"]
  OUTCOMES = {
    "rock rock" => nil,
    "rock scissors" => true,
    "rock paper" => false,
    "scissors rock" => false,
    "scissors scissors" => nil,
    "scissors paper" => true,
    "paper rock" => true,
    "paper scissors" => false,
    "paper paper" => nil,
  }

  def initialize
    @result = nil
  end

  def calculate_result(move1,move2)
    check_move_allowed(move1)
    check_move_allowed(move2)
    @result = output_winner(move1,move2)
  end

  private

  def check_move_allowed(move)
    fail 'Incorrect move' if !ALLOWED_MOVES.include?(move)
  end

  def output_winner(move1,move2)
    OUTCOMES["#{move1} #{move2}"]
  end


end
