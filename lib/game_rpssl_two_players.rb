class GameRPSSLTwoPlayers

  RULES = { rock: [:scissors, :lizard],
          paper: [:rock, :spock],
          scissors: [:paper, :lizard],
          lizard: [:paper, :spock],
          spock: [:rock, :scissors] }

  attr_reader :thrown

  def initialize(choice_one, choice_two)
    @choice_one = choice_one ? choice_one.to_sym : :rock
    @choice_two = choice_two ? choice_two.to_sym : :rock
    @options = [:rock, :paper, :scissors, :spock, :lizard]
  end

  def won?
    return :tie if @choice_one == @choice_two
    return :won if RULES[@choice_one].include? @choice_two
    :lose
  end

end
