class Game

  attr_reader :result
  
  ALLOWED_MOVES = ["rock", "paper", "scissors"]
  
  def initialize
    @result = nil
    @outcomes = {
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
  end

  def calculate_result(move1,move2)
    check_move_allowed(move1)
    check_move_allowed(move2)
    @result = output_winner(move1,move2)
  end

  private

  def check_move_allowed(move)
    fail 'Incorrect move' unless ALLOWED_MOVES.include?(move)
  end

  def output_winner(move1,move2)
    @outcomes["#{move1} #{move2}"]
  end

end
