require "game"

class Player
  def select(move)
    if move == :rock
      :rock
    elsif move == :paper
      :paper
    elsif move == :scissors
      :scissors
    else
      raise "Please select from either 'Rock', 'Paper' or 'Scissors'."
    end
  end

end
