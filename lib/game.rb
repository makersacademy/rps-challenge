class Game

  OPTIONS = ['rock', 'paper', 'scissors']

  attr_reader :player_selection, :opponents_selection

  def initialize player_selection
    @player_selection = player_selection
    @opponents_selection = ['rock', 'paper', 'scissors'].sample
  end

  def result
    return 'Draw' if player_selection == opponents_selection
    if player_selection == 'rock'
      rock_results
    elsif player_selection == 'paper'
      paper_results
    elsif player_selection == 'scissors'
      scissors_results
    end
  end

  def winner
    "Winner"
  end

  def loser
    "Loser"
  end

  def rock_results
    if opponents_selection == 'scissors'
      return winner
    else
      opponents_selection == 'paper'
      return loser
    end
  end

  def paper_results
    if opponents_selection == 'rock'
      return winner
    else
      opponents_selection == 'scissors'
      return loser
    end
  end

  def scissors_results
    if opponents_selection == 'paper'
      return winner
    else
      opponents_selection == 'rock'
      return loser
    end
  end

end