class Player 

  attr_reader :choice, :options

  def initialize
    @options = [:rock, :paper, :scissors]
    @choice = nil
  end

end