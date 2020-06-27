class RPS
  attr_reader :comp_move

  def initialize
    @comp_move = ""
  end

  def computer_move
    @comp_move << ["rock", "paper", "scissors"].sample
  end
end
