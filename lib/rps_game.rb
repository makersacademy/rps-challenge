class RPSGame
  def play(choice)
    outcome = outcome()
    opponent = opponent(choice, outcome)
    {outcome: outcome, opponent: opponent}
  end

  private

  def outcome
    ['win', 'loss', 'draw'].sample
  end

  def opponent(choice, outcome)
    case outcome
    when 'draw'
      choice
    when 'win'
      loses_against(choice)
    when 'lose'
      wins_against(choice)
    end
  end

  def loses_against(choice)
    case choice
    when 'rock'
      'scissors'
    when 'paper'
      'rock'
    when 'scissors'
      'paper'
    end
  end

  def wins_against(choice)
    case choice
    when 'rock'
      'paper'
    when 'paper'
      'scissors'
    when 'scissors'
      'rock'
    end
  end
end
