class GameRPSTwoPlayers

  RULES = { :rock => :scissors,
          :paper => :rock,
          :scissors => :paper }

  attr_reader :thrown

  def initialize(choice_one, choice_two)
    @choice_one = choice_one.to_sym if choice_one
    @choice_two = choice_two.to_sym if choice_two
    @options = [:rock, :paper, :scissors]
  end

  def won?
    return :tie if @choice_one == @choice_two
    return :won if RULES[@choice_one] == @choice_two
    :lose
  end

end
