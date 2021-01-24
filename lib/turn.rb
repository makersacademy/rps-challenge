class Turn

attr_reader :player_name, :player_weapon, :computer_weapon

RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }

  def initialize(options)
    @player_name = options["player_name"]
    @player_weapon = options["player_weapon"]
    @computer_weapon = options["computer_weapon"]
  end

#method to determine the winner of rock paper scissors using the RULES constant which returns the winners name
  def winner
    if @player_weapon == RULES[key] && @computer_weapon == RULES[value]
      return @player_name
    else
      "Computer"
    end
  end

end
