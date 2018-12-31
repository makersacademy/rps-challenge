class Computer < Player

  OPTIONS = [:rock, :paper, :scissors, :lizard, :spock]

  def initialize
    @move = OPTIONS.sample
    @name = 'Computer'
  end
end
