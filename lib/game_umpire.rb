class GameUmpire

  ROCK_BEATS_SCISSORS   = [:rock, :scissors]
  PAPER_BEATS_ROCK      = [:paper, :rock]
  SCISSORS_BEATS_PAPER  = [:paper, :scissors]


  def rule_logic(weapons)
    played_weapons = weapons.sort

    case
    when ROCK_BEATS_SCISSORS == played_weapons
      :rock
    when PAPER_BEATS_ROCK == played_weapons
      :paper
    when SCISSORS_BEATS_PAPER == played_weapons
      :scissors
    else
      :draw
    end

  end

end