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
      fail "Please select 'Rock', 'Paper' or 'Scissors'."
    end
  end

end
