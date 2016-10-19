class Game

  attr_reader :comp, :player1, :user_choice
  OPTIONS = [:rock, :paper, :scissors]

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

  private

  def comp_choice
    @comp = OPTIONS.sample
  end
end
