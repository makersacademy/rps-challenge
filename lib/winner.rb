class Winner

  def initialize(move_1, move_2)
    @move_1 = move_1
    @move_2 = move_2
  end

  def draw
    @move_1.to_sym == @move_2.to_sym
  end

  def player_1_wins
    winning_combinations
    @winner_to_loser[@move_1.to_sym] == @move_2.to_sym
  end

  def winner
    if draw
      'draw'
    elsif player_1_wins
      'player_1'
    else
      'player_2'
    end
  end

  
  private

  def winning_combinations
    @winner_to_loser = {
      :rock => :scissors,
      :paper => :rock,
      :scissors => :paper
    }
  end

end