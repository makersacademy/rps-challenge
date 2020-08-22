require_relative "player"

class Bot < Player

  def round_choice
    @choice = random_move
  end

  def random_move
    ["Rock", "Paper", "Scissors"].sample
  end

end
