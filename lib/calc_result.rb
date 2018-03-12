class Result

  def initialize(p1_name, p1_move, p2_name, p2_move)

    @moves = [p1_move, p2_move]
    @names = ["It\'s a draw!",
      "#{p1_name} is the winner!",
      "#{p2_name} is the winner!"]

    @rps_chart = {
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
    # Can create a "beatmap" which is a hash of each move with a
    # value of arrays of the moves it beats.
  end

  def calculate
    look_up = @rps_chart[@moves]
    result = @names[look_up]
  end

end
