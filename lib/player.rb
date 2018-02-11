
class Player 

  attr_reader :name

  def initialize(name)
    @name = name
  end

  OPTIONS = [:spock, :lizard, :rock, :paper, :scissors]
end