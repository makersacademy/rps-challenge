class Engine

  @@moves = [:rock, :paper, :scissors]
  @@winning_pairs = [ [:rock, :scissors],
                      [:paper, :rock],
                      [:scissors, :paper] ]

  def new_play(choice)
    evaluate(choice.to_sym, @@moves.sample)
  end

  def evaluate(play_1, play_2)
    return [:draw, play_2] if play_1 == play_2
    return [:win, play_2] if @@winning_pairs.include?([play_1, play_2])
    [:lose, play_2]
  end

end
