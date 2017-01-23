class GameOnePlayer

  RULES = { rock: [:scissors, :lizard],
          paper: [:rock, :spock],
          scissors: [:paper, :lizard],
          lizard: [:paper, :spock],
          spock: [:rock, :scissors] }

  attr_reader :thrown

  def initialize(choice)
    @choice =  choice ? choice.to_sym : :rock
    @options = [:rock, :paper, :scissors, :spock, :lizard]
  end

  def won?
    @thrown = throw
    return :tie if @choice == @thrown
    return :won if RULES[@choice].include? @thrown
    :lose
  end

  private

  def throw
    @options.sample
  end

end
