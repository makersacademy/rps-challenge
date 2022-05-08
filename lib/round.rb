class Round
  attr_reader :winner, :looser, :outcome

  def outcome_decided?
    !!outcome
  end

  def set_winner(winning_player)
    @winner = winning_player
  end

  def set_looser(loosing_player)
    @looser = loosing_player
  end

  def set_outcome(outcome_description)
    @outcome = outcome_description
  end
end
