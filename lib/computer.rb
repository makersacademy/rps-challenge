class Computer
  OPTIONS = [:rock, :paper, :scissors]

  attr_reader :move, :name

  def initialize
    @name = "WIN-#{Time.now.strftime("%H")}-NERD-#{Time.now.strftime("%M")}"
  end

  def play
    @move = OPTIONS.sample
  end

end
