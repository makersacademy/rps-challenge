class Result

  def initialize(p1_name, p1_move, p2_name, p2_move)
    @moves = [p1_move, p2_move]
    @names = ["It\'s a draw!", "#{p1_name} is the winner!",
              "#{p2_name} is the winner!"]
    @rps_chart = {
      ["rock", "rock"] => 0, ["rock", "paper"] => 2, ["rock", "scissors"] => 1,
      ["paper", "rock"] => 1, ["paper", "paper"] => 0,
      ["paper", "scissors"] => 2, ["scissors", "rock"] => 2,
      ["scissors", "paper"] => 1, ["scissors", "scissors"] => 0
    }
  end

  def calculate
    look_up = (@rps_chart[@moves]).to_i
    @names[look_up]
  end

end
