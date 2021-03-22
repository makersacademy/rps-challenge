class Rules

  attr_reader :choices

  def initialize
    @choices = ["rock", "paper", "scissors"]
    @logic = [["paper", "scissors"], ["scissors", "rock"], ["rock", "paper"]]
  end

  def valid_choice?(player_choice)
    return true unless @choices.index(player_choice).nil?

    false
  end

# check if player 2's choice is in the loser position given player 1's choice
  def declare_winner(bout)
    player_one = bout.players.first.choice
    player_two = bout.players.last.choice
    if player_one == player_two
      "Tied"
    elsif @logic[@choices.index(player_one)].index(player_two) == 1
      bout.players.first
    else
      bout.players.last
    end
  end
end
