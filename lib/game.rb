class Game

  attr_reader :userchoice, :computerchoice, :winner
  RULES = { rock: :paper,
            paper: :scissors,
            scissors: :rock
            }

  def initialize(userchoice, computerchoice)
    @userchoice = userchoice.to_sym
    @computerchoice = computerchoice.to_sym
  end

  def winner(choice=@computerchoice)
    RULES[choice]
  end

end
