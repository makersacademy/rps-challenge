class Choice

  OPTIONS = {
    rock: [:scissors, :lizard],
    scissors: [:paper, :lizard],
    paper: [:rock, :spock],
    lizard: [:paper, :spock],
    spock: [:rock, :scissors]
  }

  def initialize
    @choices = [:rock, :paper, :scissors, :lizard, :spock]
  end

  def new_game(player, computer = @choices.sample)
    win?(player.to_sym, computer)
  end

private

  def win?(player, computer)
    if player == computer
      return "It's a draw"
    elsif OPTIONS[player].include?(computer)
      "You win"
    else
      "Computer wins"
    end
  end
end
