class GameRPSOnePlayer

  RULES = { :rock => :scissors,
          :paper => :rock,
          :scissors => :paper }

  attr_reader :thrown

  def initialize(choice)
    @choice = choice.to_sym if choice
    @options = [:rock, :paper, :scissors]
  end

  def won?
    @thrown = throw
    return :tie if @choice == @thrown
    return :won if RULES[@choice] == @thrown
    :lose
  end

  private

  def throw
    @options.sample
  end

end
