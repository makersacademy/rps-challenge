
class Game
  attr_reader :choices, :mine
  def initialize
    @choices = ['ROCK','SCISSORS','PAPER']
  end
  def play
    @choices.sample
  end

  def compare(player_1, computer)
    p_index = @choices.index(player_1)
    c_index = @choices.index(computer)
    if p_index - 1 == c_index
    "Computer wins!"
    elsif p_index == 0 && c_index==2
    "Computer wins!"
    elsif p_index == c_index
    "Tie!"
    else
    "You win!"
    end
  end
end
