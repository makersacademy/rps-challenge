class Game

  attr_reader :userchoice, :computerchoice, :to_win
  RULES = { rock: :paper,
            paper: :scissors,
            scissors: :rock
            }

  def initialize(userchoice, computerchoice)
    @userchoice = userchoice.to_sym
    @computerchoice = computerchoice.to_sym
  end

  def to_win(choice=@computerchoice)
    RULES[choice]
  end

end
