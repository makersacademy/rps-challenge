class GameResult

  def initialize(p1move, compu_move, player_name)
    @two_moves = [p1move, compu_move]
    @result = ["It\'s a draw",
    "#{player_name} is the winner!","computer wins!"]
    @combinations = {
      ["rock", "rock"] => 0,
      ["rock", "paper"] => 2,
      ["rock", "scissors"] => 1,
      ["paper", "rock"] => 1,
      ["paper", "paper"] => 0,
      ["paper", "scissors"] => 2,
      ["scissors", "rock"] => 2,
      ["scissors", "paper"] => 1,
      ["scissors", "scissors"] => 0
    }
  end


  def calculate_result
    moves = @combinations[@two_moves]
    @result[moves]
  end
end
