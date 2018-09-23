

class Moves
  attr_reader :comp_move

  def initialize
    @comp_move = ["Rock", "Paper", "Scissors"].sample
  end

end
