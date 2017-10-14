
class Opponent

  attr_reader :opponent_choice

  def opponent_choice
    [:rock, :paper, :scissors].sample
  end

end
