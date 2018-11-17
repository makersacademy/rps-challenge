class RPS

  WEAPONS = [ :rock, :paper, :scissors]
  RULES = [  {rock: :scissors}, {paper: :rock},{ scissors: :paper}]

  attr_reader :choice, :random, :game

  def initialize(choice)
    @choice = choice
    @random = WEAPONS.sample
    @game = { choice => random }
  end

  def play

  end

  def message
    
  end

end
