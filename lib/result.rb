class Result

    def initialize(p1_move, computer_move)
      @p1_move = p1_move
      @computer_move = computer_move
    end

  def get_result
    if @p1_move == "rock" && @computer_move == "paper"
      return "PLAYER 1 WINS"

  else return "ARGGHHHHHH, you lost!"
  end
end

end
