class Player

  def select(move)
    if move == :rock
      :rock
    elsif move == :paper
      :paper
    else
      :scissors
    end
  end

end
