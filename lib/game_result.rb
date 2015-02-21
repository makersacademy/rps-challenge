class GameResult

  def initialize(umpire, player, computer)
    @umpire = umpire
    @player = player
    @computer = computer
  end

  def played_weapons
    weapons = [@player.weapon, @computer.weapon]
  end

  def announcement
    winner = check_weapons(played_weapons)

    if winner == :draw
      result_headliner(winner)
    else
      result_headliner(match_up[winner])
    end
  end

  private def check_weapons(match_up)
    weapons = match_up.keys
    @umpire.rule_logic(weapons)
  end

  private def result_headliner(winner)
    case winner
    when :player
      "Player Wins"
    when :computer
      "Computer Wins"
    when :draw
      "It's a draw"
    else
      "No result found"
    end
  end



end