class Game

  attr_reader :comp
  OPTIONS = [:rock, :paper, :scissors]

  def comp_choice
    @comp = OPTIONS.sample
  end
  
  def rock
    if comp == :rock
      "drew"
    elsif comp == :paper
      "lost"
    else
      "won!"
    end
  end

  def paper
    if comp == :rock
      "won!"
    elsif comp == :paper
      "drew"
    else
      "lost"
    end
  end

  def scissors
    if comp == :rock
      "lost"
    elsif comp == :paper
      "won!"
    else
      "drew"
    end
  end

end
