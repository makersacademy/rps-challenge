class Computer

  attr_reader :name, :move

  def initialize
    @name = "RPSbot"
    @move = [:rock, :paper, :scissors, :spock, :lizard].sample
  end

end
