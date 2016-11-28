class Computer
  OPTIONS = [:rock, :paper, :scissors]

  attr_reader :move

  def play
    @move = OPTIONS.sample
  end

end
